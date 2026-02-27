#!/bin/bash

#SBATCH -J runoff_post
#SBATCH -A ISAAC-UTK0448
#SBATCH -o logs/post_%j.out
#SBATCH -e logs/post_%j.err
#SBATCH --time=00:05:00
#SBATCH --mem=256M
#SBATCH -p short
#SBATCH --qos=short

set -euo pipefail

mkdir -p logs

image_path="$PWD/assignment1_container.sif"

echo "Starting aggregation..."
apptainer exec "$image_path" \
    python3 01_explore_dataset.py aggregate

echo "Starting classification..."
apptainer exec "$image_path" \
    python3 01_explore_dataset.py classify

echo "Post-processing completed successfully."
