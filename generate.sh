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
mkdir -p out/arbeitszeugnisse
#mkdir out/zertifikate
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
pdflatex --output-directory='out/' "$lettertemplate"'.tex'
xelatex --output-directory='out/' "$cvtemplate"'.tex'

##############################
## COPY OUTPUT TO OUT
##############################
cp 'out/'"$lettertemplate"'.pdf' ../../out/motivationsschreiben.pdf
cp 'out/'"$cvtemplate"'.pdf' ../../out/cv.pdf
cd $home
##############################
## CHECKING FOR PARAMETERS
##############################
if [[ $1 == "show" ]]
then
    evince "./out/motivationsschreiben.pdf"
fi

