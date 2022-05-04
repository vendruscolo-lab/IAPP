#!/bin/bash

#PBS -N IAPP
#PBS -l nodes=16:ppn=16
#PBS -l walltime=72:0:0
#PBS -q l32
#PBS -o pbs.out
#PBS -e pbs.err
#PBS -m ae

source /home/tl465/.bashrc

export PBS_O_WORKDIR=$(readlink -f $PBS_O_WORKDIR)
cd $PBS_O_WORKDIR
export OMP_NUM_THREADS=1
export PLUMED_NUM_THREADS=$OMP_NUM_THREADS
export GROMACS=/sharedscratch/tl465/opt/gromacs-2020.6/bin/gmx_mpi


mpirun -v -np 256 $GROMACS mdrun -deffnm topol -cpi topol -multidir r{0..31} -plumed ../plumed.dat -noappend -v -ntomp $OMP_NUM_THREADS -nsteps -1 -maxh 70 -cpnum -cpt 120 &> log
