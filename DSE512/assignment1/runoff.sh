#!/bin/bash

#SBATCH -J runoff
#SBATCH -A ISAAC-UTK0448
#SBATCH -o logs/runoff_%A_%a.out
#SBATCH -e logs/runoff_%A_%a.err
#SBATCH --array=0-11
#SBATCH --nodes=1
#SBATCH --time=00:10:00
#SBATCH --mem=512M
#SBATCH -p short
#SBATCH --qos=short

set -euo pipefail

mkdir -p logs

image_path="${image_path:-$PWD/assignment1_container.sif}"
data_dir="${data_dir:-$PWD/data}"

echo "Host check: $(hostname)"
echo "Submitting container run at $(date -Iseconds)"
echo "Task ID: ${SLURM_ARRAY_TASK_ID:-0}"
echo "Using container: ${image_path}"
echo "Using data directory: ${data_dir}"

if [[ ! -f "${image_path}" ]]; then
  echo "Error: container image not found at ${image_path}" >&2
  exit 1
fi

if [[ ! -d "${data_dir}" ]]; then
  echo "Error: data directory not found at ${data_dir}" >&2
  exit 1
fi

# Helpful diagnostics for path issues
ls -l "${image_path}" || true
ls -ld "${data_dir}" || true

mapfile -t input_files < <(find "${data_dir}" -maxdepth 1 -type f | sort)

if [[ ${#input_files[@]} -lt 5 ]]; then
  echo "Error: Expected at least 5 files in ${data_dir}, found ${#input_files[@]}" >&2
  exit 1
fi

task_id="${SLURM_ARRAY_TASK_ID:-0}"
if (( task_id < 0 || task_id >= ${#input_files[@]} )); then
  echo "Error: Task ID ${task_id} out of range (0..$(( ${#input_files[@]} - 1 )))" >&2
  exit 1
fi

input_file="${input_files[$task_id]}"
echo "Selected input file: ${input_file}"

apptainer exec "${image_path}" python3 01_explore_dataset.py "${input_file}"

echo "Container run completed at $(date -Iseconds)"

