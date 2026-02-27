#!/bin/bash

#SBATCH -J runoff
#SBATCH -A ISAAC-UTK0448
#SBATCH -o logs/runoff_%A_%a.out
#SBATCH -e logs/runoff_%A_%a.err
#SBATCH --array=0-15
#SBATCH --nodes=1
#SBATCH --time=00:10:00
#SBATCH --mem=512M
#SBATCH -p short
#SBATCH --qos=short

set -euo pipefail

mkdir -p logs

image_path="${image_path:-$PWD/assignment1_container.sif}"
DATA_PATH="$PWD/data/Data_March.csv"

if [[ ! -f "$DATA_PATH" ]]; then
  echo "CSV not found: $DATA_PATH" >&2
  exit 1
fi

apptainer exec "$image_path" \
    python3 01_explore_dataset.py simulate \
    "$DATA_PATH" \
    $((SLURM_ARRAY_TASK_ID+1))
