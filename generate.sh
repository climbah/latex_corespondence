##############################
## SET GENERAL VARIABLES
##############################
#lettertemplate="letter_template"
home=/data/GITLAB/latex_dossier
lettertemplate="business2"
cvtemplate="template"
##############################
## CREATING OUT DIRECTORIES
##############################
mkdir -p out/cert
mkdir -p includes/generate/out

##############################
## Cleanup and Copy
##############################
cd includes
./CopyJob.sh
cd $home
##############################
## GENERATE THE TEMPLATES
##############################
cd includes/generate
xelatex --output-directory='out/' "$cvtemplate"'.tex'
pdflatex --output-directory='out/' "$lettertemplate"'.tex'
##############################
## COPY OUTPUT TO OUT
##############################
cp ../docs/* -r ../../out
cp 'out/'"$lettertemplate"'.pdf' ../../out/motivation.pdf
cp 'out/'"$cvtemplate"'.pdf' ../../out/cv.pdf
cd $home

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
    evince "./out/cv.pdf"
fi

