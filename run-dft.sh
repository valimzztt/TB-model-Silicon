#!/bin/bash -l
#SBATCH -p nodes
#SBATCH -n 28
#SBATCH --mem-per-cpu=2000
module purge
module add impi sci/dft
cd 02_HSE
mpirun -np 4 vasp 