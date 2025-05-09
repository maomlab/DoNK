#!/bin/bash

# run this by
#
#    cd <dock_campaign>
#    source setup_dock_environment.sh
#

# supported cluster types:
# LOCAL, SGE, SLURM
export USE_SLURM=true
export CLUSTER_TYPE=SLURM

export HOME=/nfs/turbo/umms-maom

# use these options for SLURM clusters.. FILL IN!
export SLURM_ACCOUNT=
export SLURM_MAIL_USER=
export SLURM_MAIL_TYPE=BEGIN,END
export SLURM_PARTITION=standard

export SCRATCH_DIR= # FILL IN!
export DOCK_TEMPLATE=${HOME}/mdolo/opt/dock_campaign_template

export DOCKBASE=${HOME}/opt/DOCK-dev/ucsfdock
# the DOCKBASE folder should contain files and folders that look like this:
# analysis, bin, common, docking, install, ligand protein, files.py, util.py, __init__.py

export PATH="${PATH}:${DOCKBASE}/bin:${DOCK_TEMPLATE}/scripts"
export ZINC3D_PATH=" ${HOME}/ZINC_mirror/published/3D"

# to build molecules for zinc (WIP)
#https://comp.chem.umn.edu/sds/amsol/amsol7.1.tar.xz
#with co-linear patch
export AMSOLEXE=${HOME}/opt/amsol7.1-colinear-fix/amsol7.1
export EMBED_PROTOMERS_3D_EXE=$DOCKBASE/ligand/3D/embed3d_corina.sh

export OMEGA_ENERGY_WINDOW=12
export OMEGA_MAX_CONFS=600

# Setup environment for BKSLab
#source /mnt/nfs/soft/dock/versions/dock37/DOCK-3.7-trunk/env.csh
#setenv AMSOLEXE /nfs/home/momeara/ex9/tools/amsol7.1-colinear-fix/amsol7.1
#setenv SOFT /mnt/nfs/soft
#source /mnt/nfs/soft/python/current/env.csh
#source /nfs/soft/jchem/current/env.csh
#setenv EMBED_PROTOMERS_3D_EXE $DOCKBASE/ligand/3D/embed3d_corina.sh
#setenv PATH ${PATH}:/nfs/soft/corina/current
#setenv PATH ${PATH}:/nfs/soft/openbabel/current/bin
#setenv TMPDIR /scratch/momeara

# path to zinc database
