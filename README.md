# Constructing a Tight Binding Model of Silicon using VASP and Wannier90

This guide provides step-by-step instructions on how to construct a tight binding model of Silicon by performing calculations with the VASP package and interfacing it with Wannier90.

## Prerequisites

- VASP (Vienna Ab initio Simulation Package)
- Wannier90
- Basic knowledge of Density Functional Theory (DFT) and Wannier functions

## Step 1: Self-Consistent Field (SCF) Calculation

The first step is to perform a self-consistent field (SCF) calculation using the Perdew-Burke-Ernzerhof (PBE) method within the Generalized Gradient Approximation (GGA) in Density Functional Theory (DFT).

1. Prepare the `INCAR`, `POSCAR`, `KPOINTS`, and `POTCAR` files for Silicon.
2. In the `INCAR` file, specify the PBE method for the exchange-correlation functional.
3. Run the SCF calculation using VASP.

Example `INCAR` settings for SCF:

'
PREC = Accurate
ENCUT = 520
ISMEAR = 0
SIGMA = 0.05
IBRION = -1
NELM = 120
ISIF = 3
GGA = PE
'

## Step 2: Hybrid Functional Calculation with Wannier90 Interface

Next, use the `WAVECAR` file obtained from the SCF calculation in a subsequent DFT run with hybrid functionals. Enable the Wannier90 interface in VASP.

1. In the `INCAR` file, add the tag `LWannier90 = .TRUE.` to activate the VASP-Wannier90 interface.
2. Use the `WAVECAR` file from the SCF step as input.
3. Ensure that the hybrid functionals are appropriately set in the `INCAR` file.
4. Run the VASP calculation to obtain the maximally localized Wannier functions (MLWFs) with sp3 orbital character.

Example additional `INCAR` settings for this step:



Certainly! Below is the markdown code for the instructions on constructing a tight binding model of Silicon using the VASP package and its interface with Wannier90.

markdown
Copy code
# Constructing a Tight Binding Model of Silicon using VASP and Wannier90

This guide provides step-by-step instructions on how to construct a tight binding model of Silicon by performing calculations with the VASP package and interfacing it with Wannier90.

## Prerequisites

- VASP (Vienna Ab initio Simulation Package)
- Wannier90
- Basic knowledge of Density Functional Theory (DFT) and Wannier functions

## Step 1: Self-Consistent Field (SCF) Calculation

The first step is to perform a self-consistent field (SCF) calculation using the Perdew-Burke-Ernzerhof (PBE) method within the Generalized Gradient Approximation (GGA) in Density Functional Theory (DFT).

1. Prepare the `INCAR`, `POSCAR`, `KPOINTS`, and `POTCAR` files for Silicon.
2. In the `INCAR` file, specify the PBE method for the exchange-correlation functional.
3. Run the SCF calculation using VASP.

Example `INCAR` settings for SCF:

PREC = Accurate
ENCUT = 520
ISMEAR = 0
SIGMA = 0.05
IBRION = -1
NELM = 120
ISIF = 3
GGA = PE

## Step 2: Hybrid Functional Calculation with Wannier90 Interface

Next, use the `WAVECAR` file obtained from the SCF calculation in a subsequent DFT run with hybrid functionals. Enable the Wannier90 interface in VASP.

1. In the `INCAR` file, add the tag `LWannier90 = .TRUE.` to activate the VASP-Wannier90 interface.
2. Use the `WAVECAR` file from the SCF step as input.
3. Ensure that the hybrid functionals are appropriately set in the `INCAR` file.
4. Run the VASP calculation to obtain the maximally localized Wannier functions (MLWFs) with sp3 orbital character.

Example additional `INCAR` settings for this step:

LHFCALC = .TRUE.
AEXX = 0.25
ALDAC = 0.75
LWannier90 = .TRUE.


## Step 3: Non-Self Consistent Run for Bandstructure and Density of States

Finally, perform a non-self-consistent run using the charge density obtained from the first SCF step.

1. Use the `CHGCAR` file from the SCF calculation.
2. Adjust the `INCAR` file for a non-self-consistent run.
3. Set up `KPOINTS` file for the desired band structure path.
4. Run VASP to calculate the band structure and the density of states (DOS) of Silicon.

Example `INCAR` settings for the non-SCF run:
## Conclusion

By following these steps, you can construct a tight binding model of Silicon using VASP and its interface with Wannier90. The key is to perform accurate DFT calculations and utilize the capabilities of Wannier90 to obtain maximally localized Wannier functions, which are crucial for the tight binding model.




