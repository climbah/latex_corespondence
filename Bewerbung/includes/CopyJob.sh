#!/usr/bin/env bash
##############################
# cleanup Generation Directory
##############################
home=./../../
rm generate -r

##############################
# Create Generation Directory
##############################
mkdir -p generate/log
mkdir -p generate/out
mkdir -p generate/cert

##############################
# Copy Templatestemplates
##############################
cp ./../../Shared/letter/business2.tex ./generate/
cp templates/letter/* ./generate/
cp templates/cv/* -r ./generate/

##############################
# Copy Additional Files
##############################
cp *.tex ./generate/
cp docs/* -r ./generate/cert/

