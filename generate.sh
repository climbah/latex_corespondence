#!/usr/bin/env bash
##############################
## SET GENERAL VARIABLES
##############################
home=$PWD
generate=./Generate/
type=.
cvtemplate="template"
template="business2"

##############################
## CHECK ARGUMENTS
##############################
if [[ $1 == "" ]]
then
	echo "EXITING > NO ARGUMENTS"
	exit	
else 
    if [[ $1 == "letter" ]]
    then
        template="letter_template"
    fi
fi

##############################
## Cleanup and Copy 
##############################
cd Generate
rm out/ -rf && mkdir out
rm temp/ -rf && mkdir temp
./CopyJob.sh $1
##############################
## GENERATE THE TEMPLATES
##############################
cd temp
xelatex --output-directory='../out/' "$template"'.tex'
wait
xelatex --output-directory='out/' "$cvtemplate"'.tex'
###############################
### COPY OUTPUT TO OUT
###############################
#cp 'out/'"$lettertemplate"'.pdf' $home/out/motivation.pdf -f
#cp 'out/'"$cvtemplate"'.pdf' $home/out/cv.pdf -f
#cd $home
#pdftk ./out/motivation.pdf ./out/cv.pdf cat output ./out/candidature.pdf
#
###############################
### MAKING ZIP
###############################
#cd out
##pdfsam -f motivationsschreiben.pdf -f cv.pdf -o candidature.pdf 
###############################
### CHECKING FOR PARAMETERS
###############################
if [[ $1 == "show" ]]
then
	cd $home
    evince "./out/full.pdf"
else
    echo -n "Open Output? [y|n]: "
    read inp
    if [[ $inp == "y" ]]
    then
        cd $home
        evince "./Generate/out/$template.pdf"
    fi
fi

#echo -n "Finalize?: "
#read inp
#if [[ $inp == "y" ]]
#then
#echo 'finalize'
#echo 'create zip'
#fi

