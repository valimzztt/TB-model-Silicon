#!/bin/bash -l
module purge
module add impi sci/dft
cd 02_NSCF
mpirun -np 28 vasp 