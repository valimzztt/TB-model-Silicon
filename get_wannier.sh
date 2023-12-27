#!/bin/bash -l
#SBATCH -p nodes
#SBATCH -n 28
#SBATCH --mem-per-cpu=2000
module purge
module add impi sci/dft
VASP_PATH="/home/sci/bin/vasp/vasp.5.4.4.pl2_impi_intel_17.5.v2_wan"
WANNIER_PATH="/home/sci/opt/wannier90-2.1.0_impi"
cd 03_WANNIER_HSE
${WANNIER_PATH}/wannier90.x wannier90

