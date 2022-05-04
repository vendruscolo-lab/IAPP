This repository contains the necessary topology, structure, gromacs parameter and plumed files used in this work. In particular,

TOPO_MDP folder containts GROMACS topology and parameter files.
PRODUCTION containst the plumed file and the associated companion files such as an index file, data GMM file (iapp.dat),  structure.pdb file and job submission file used.

PRODUCTION_TPR contaitns the folders containing the .tpr files of each replica. Uppon simulation the r$i foders should be contained in the PRODUCTION folder. 

ANALYSIS folder contains the plumed_analysis.dat file used to print the CVs of the biased N-tail side as well as the final torrie-value weight per-frame.
plumed_analysis_unbiased.dat is used to print the unbiased N-tail side CVs. 

An sample sample of the ensemble can be found in Zenobo
