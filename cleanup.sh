#!/bin/bash -l

cd 03_WANNIER_HSE

#clean up everything generate by VASP and Wannier90
rm -f CHG CONTCAR* DOSCAR* DYNMAT EIGENVAL IBZKPT OPTIC OSZICAR* OUTCAR* PROCAR* \
      PCDAT XDATCAR* PARCHG* vasprun.xml SUMMARY.* REPORT \
      wannier90_band.gnu wannier90_band.kpt wannier90.chk wannier90.err wannier90.wout wannier90_band.kpt wannier90_hr.dat wannier90_centres.xyz wannier90.nnkp wannier90.mmn wannier90.eig\
      *.dat plotfile p4vasp.log \
      *.e[0-9]* *.o[0-9]* *.pe[0-9]* *.po[0-9]* *.err *.out 

