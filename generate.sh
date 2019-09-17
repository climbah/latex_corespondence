##############################
## SET GENERAL VARIABLES
##############################
#lettertemplate="letter_template"
home=$PWD
lettertemplate="business2"
cvtemplate="template"

##############################
## Cleanup and Copy 
##############################
rm out -rf
cd includes
./CopyJob.sh
cd $home
mkdir out
##############################
## GENERATE THE TEMPLATES
##############################
cd includes/generate
xelatex --output-directory='out/' "$lettertemplate"'.tex'
wait
xelatex --output-directory='out/' "$cvtemplate"'.tex'
##############################
## COPY OUTPUT TO OUT
##############################
cp 'out/'"$lettertemplate"'.pdf' $home/out/motivation.pdf -f
cp 'out/'"$cvtemplate"'.pdf' $home/out/cv.pdf -f
cd $home
pdftk ./out/motivation.pdf ./out/cv.pdf cat output ./out/full.pdf
##############################
## MAKING ZIP
##############################
cd out
#pdfsam -f motivationsschreiben.pdf -f cv.pdf -o candidature.pdf 
##############################
## CHECKING FOR PARAMETERS
##############################
if [[ $1 == "show" ]]
then
	cd $home
    evince "./out/full.pdf"
else
    echo -n "Open Output?: "
    read inp
    if [[ $inp == "y" ]]
    then
        cd $home
        evince "./out/cv.pdf"
    fi
fi

echo -n "Finalize?: "
read inp
if [[ $inp == "y" ]]
then
echo 'finalize'
echo 'create zip'
fi

