#!/bin/bash

#SBATCH -J runoff
#SBATCH -A ACF-UTK0011
#SBATCH --partition=campus
#SBATCH --output=logs/runoff_%A_%a.out
#SBATCH --error=logs/runoff_%A_%a.err
#SBATCH --array=0-11
#SBATCH --ntasks=1
#SBATCH -t 00:30:00
#SBATCH --mem=512M

set -euo pipefail

mkdir -p logs

image_path="${image_path:-$PWD/assignment1_container.sif}"
data_dir="$PWD/data/Data_March.csv"

echo "Host check: $(hostname)"
echo "Submitting container run at $(date -Iseconds)"
echo "Task ID: ${SLURM_ARRAY_TASK_ID:-0}"
echo "Using container: ${image_path}"
echo "Using data directory ${data_dir}"

if [[ ! -f "${image_path}" ]]; then
  echo "Error: container image not found at ${image_path}" >&2
  exit 1
fi

if [[ ! -d "${data_dir}" ]]; then
  echo "Error: data directory not found at ${data_dir}" >&2
  exit 1
fi

mapfile -t input_files < <(find "$data_dir" -maxdepth 1 -type f | sort)

if [[ ${#input_files[@]} -lt 5 ]]; then
  echo "Error: Expected at least 5 files in ${data_dir}, found ${#input_files[@]}" >&2
  exit 1
fi

task_id="${SLURM_ARRAY_TASK_ID:-0}"
input_file="${input_files[$task_id]}"

apptainer exec assignment1_container.sif \
    python3 01_explore_dataset.py simulate \
    "$data_dir" \
    $((SLURM_ARRAY_TASK_ID+1))

echo "Container run completed at $(date -Iseconds)"