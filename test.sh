#!/bin/bash
#SBATCH -A sen
#SBATCH --nodes=1 --mem=180GB
#SBATCH --mail-user=qanguyen4@uh.edu
#SBATCH --mail-type=all
#SBATCH --ntasks-per-node=40 --constraint=gen10
#SBATCH -J ONIOM #
#SBATCH -o ONIOM%j
#SBATCH -t 336:00:00 # time (D-HH:MM)

module add gaussian16/c.01
unset GAUSS_SCRDIR
export org_dir=`pwd`

export model= e1_01

g16  $model

cp $model".log" $org_dir


