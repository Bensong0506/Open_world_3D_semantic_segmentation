#!/bin/bash
#SBATCH --job-name=semantickitti_ood_final    # Job name
#SBATCH --ntasks=1                 # Number of tasks (processes)
#SBATCH --cpus-per-task=4          # Number of CPU cores per task
#SBATCH --mem-per-cpu=4G           # Memory per CPU core
#SBATCH --gpus=1               # Number of GPUs to request
#SBATCH --time=10:10:00            # Maximum runtime in HH:MM:SS
#SBATCH --output=output.txt        # Output file
#SBATCH --error=error.txt          # Error file

# Load any necessary modules
module load Python

# Change to the directory where your Python script is located
cd /cluster/scratch/wesong/semantic_kitti/semantickitti_scripts

# Run your Python script
python val_cylinder_asym_incre.py