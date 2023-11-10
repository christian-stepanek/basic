#!/bin/bash
#SBATCH --job-name=noncmore_preprocess_AWI-ESM2
#SBATCH --partition=smp
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --time=04:30:00
#SBATCH --qos=12h
#SBATCH --mail-type=FAIL
#SBATCH --account=paleodyn.paleodyn
#SBATCH --output=noncmore_preprocess_AWI-ESM2.%j.out
#SBATCH --mem=6000MB

# limit stacksize ... adjust to your programs need
# and core file size
#ulimit -s 204800
#ulimit -c 0

set -e

./noncmore_preprocess_AWI-ESM2.sh /albedo/work/user/stepanek/esm_experiments_6/piControl/outdata/ /albedo/work/user/stepanek/esm_experiments_6/piControl/cmpitool/postprocessed/piControl AWI-ESM2 0 2075 2099 /albedo/work/user/stepanek/esm_experiments_6/piControl/cmpitool/input/grid.nc /albedo/work/user/stepanek/esm_experiments_6/piControl/cmpitool/postprocessed/piControl/tmpdata /albedo/work/user/stepanek/esm_experiments_6/piControl/cmpitool/input/nz1_variables.dump /albedo/work/user/stepanek/esm_experiments_6/piControl/cmpitool/input/nz1_data.dump "0"
