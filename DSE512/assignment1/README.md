# Assignment 1: A Responsible, Reproducible Workflow

This repository contains all the files for assignment 1

### Content 

- `data/` contains the dataset 
- `logs/` contains the error and output files of the successful job
- `runoff.sh` is the bash script that is submitted
- `assignment1_container.def` is the apptainer container
- `assignment1_container.sif` not included, is the containe image file (see Usage section)

### Usage

To create container image run `apptainer build assignment1_container.def`, this will create the container image file `assignment1_container.sif`.

To run script run `sbatch runoff.sh`

#### Collaborators

- Anibely Torres (atorresp@vols.utk.edu)
- Hamna Hasan (hhasan2@vols.utk.edu)

