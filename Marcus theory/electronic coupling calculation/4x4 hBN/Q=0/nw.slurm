#!/bin/bash
#SBATCH --job-name=COF
#SBATCH --partition=scavenge
#SBATCH --nodes=8
#SBATCH --ntasks=192
#SBATCH --time=4:00:00
#SBATCH -o logfile
#SBATCH --constraint="opath"


cd $SLURM_SUBMIT_DIR

echo "Job started on `hostname` at `date`"




module purge

ml icc/2019.3.199-GCC-8.3.0  impi/2019.4.243 NWChem/6.8.revision47

srun nwchem mol.nw

echo "Job finished on `hostname` at `date`"
