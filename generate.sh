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
pdflatex --output-directory='out/' "$cvtemplate"'.tex'
cd $home
##############################
## COPY OUTPUT TO OUT
##############################
cp 'includes/out/'"$lettertemplate"'.pdf' ./out/motivationsschreiben.pdf
cp 'includes/out/'"$cvtemplate"'.pdf' .

##############################
## CHECKING FOR PARAMETERS
##############################
if [[ $1 == "show" ]]
then
    evince "./out/motivationsschreiben.pdf"
fi

