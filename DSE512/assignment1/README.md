# Assignment 1: A Responsible, Reproducible Workflow

This repository contains all the files for assignment 1

### Content 

- `data/` contains the dataset 
- `logs/` contains the error and output files of the successful job
- `runoff.sh` is the bash script that is submitted
- `postprocess.sh` is the script that runs the post processing steps including Aggregation and Classification
- `assignment1_container.def` is the apptainer container
- `assignment1_container.sif` not included, is the container image file (see Usage section)

### Usage

To create container image run `apptainer build assignment1_container.def`, this will create the container image file `assignment1_container.sif`.

To run script run `sbatch runoff.sh`

### Reflection

**Workflow reasoning**

- The workflow is structured as a Directed Acyclic Graph (DAG) to enforce clear stage separation and dependencies. Validation must complete successfully before simulation begins to ensure correct sequence and preventing wasted compute resources.

The simulation stage is implemented as a SLURM job array, where each task independently computes runoff for a single daily rainfall–infiltration record. Each task represents an independent array, allowing parallel scalability. 

Aggregation operates only on successful outputs. The classification stage transforms numerical ensemble results into decision-relevant risk categories (Low/Medium/High), making the workflow suitable for operational risk screening.

The separation of stages (validate, simulate, aggregate, classify) ensure reproducibility, and debuggability. Each stage can be re-run independently without recomputing previous steps.

**Failure**

- To demonstrate failure, one infiltration value was deliberately set to a negative number. Since infiltration coefficients must lie in the range [0,1], the simulation stage includes a validation flag: if infil < 0 or infil > 1: raise ValueError(...). The corresponding SLURM array task fails with an explicit error message, while all other array tasks complete successfully. 

**Containers**

- A container guarantees a consistent packaged envrioment where the same base OS layer, installed libraries, language/runtime versions, and application files each time the image is run. That consistency improves reproducibility across different hosts and clusters, as long as you launch it the same way and provide the same inputs.
A container does not guarantee that everything expected is present or configured at runtime: a command like `python` may still be missing, host paths may be unavailable unless correctly mounted, and environment details (permissions, working directory, variables, SLURM context) can still conflict. 

**Reponsible use**

- We chose `--time=00:10:00` and `--mem=512M` as safe initial estimates for a short, single-input Python batch task, not as final tuned values. Ideally, we would want to approach this empirically: run a sample task, measure runtime and peak memory (`/usr/bin/time -v`, then `sacct`), and set requests to roughly p95/p99 and a modest headroom so jobs are stable without over-requesting resources.
- If we were to scale it to 500 tasks, we would change the array length, hence we will submit as an array with a concurrency cap (for example `--array=0-499%`), and retune time/memory to reduce queue delay, and add failure handling (retry only failed task IDs) as we did during our last class activity. We would also need to manage scheduler limits/QoS, reduce log sprawl from hundreds of files, and watch shared filesystem contention from many simultaneous reads, potentially using staging or batching strategies.


#### Collaborators

- Anibely Torres (atorresp@vols.utk.edu) and Hamna Hasan (hhasan2@vols.utk.edu)

