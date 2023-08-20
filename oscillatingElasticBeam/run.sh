#!/bin/bash
#SBATCH -N 2
#SBATCH --job-name=beam_cross_flow
#SBATCH --ntasks-per-node=48
#SBATCH --partition=standard
#SBATCH --error=log.err
#SBATCH --output=log.out
#SBATCH --time=10:00:00

source solids4FoamScripts.sh 
blockMesh -region solid
blockMesh -region fluid
decomposePar -region fluid
decomposePar -region solid
mpirun -np 12 solids4Foam -parallel

