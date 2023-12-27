#!/bin/bash -l
#SBATCH -p nodes
#SBATCH -n 28
#SBATCH --mem-per-cpu=10000
module purge
module add impi sci/dft
VASP_EXECUTABLE="/home/sci/bin/vasp/vasp.5.4.4.pl2_impi_intel_17.5.v2_wann/vasp_std"
cd 03_WANNIER_HSE
mpirun -np 4 $VASP_EXECUTABLE