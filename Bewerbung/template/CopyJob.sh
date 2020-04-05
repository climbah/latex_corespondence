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
cp -v ../../Shared/letter/template/business2.tex ./generate/
cp -v templates/cv/* -r ./generate/

##############################
# Copy Additional Files
##############################
cp *.tex ./generate/
cp ../../Shared/letter/conf.letter.static.tex ./generate/
cp docs/* -r ./generate/cert/

