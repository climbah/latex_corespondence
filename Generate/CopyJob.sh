#!/usr/bin/env bash
# DEFS
home=./../
generate=./temp
type=.

if [[ $1 == "cv" ]]
then
    type=./../Bewerbung/template
    mkdir $generate/cert/ 
    #copy_template_cv
    cp -vr $type/$1/* $generate
    #copy_certs_cv
    cp -v $type/docs/* $generate/cert
    ./CopyJob.sh letter
fi
if [[ $1 == "letter" ]]
then
    type=./../Shared/letter
    # LETTER COPY
    cp -v $type/*.tex $generate
fi
if [[ $1 == "presentation" ]]
then
    ./CopyJob.sh letter
    ./CopyJob.sh cv
fi

if [[ $1 == "mass_letter" ]]
then
    type=./../Korrespondenz/ 
    echo "TODO MASS SEND OF LETTERS"
fi  

#############
# COPY CONF
#############

cp -v $home/conf/* $generate
