##############################
## SET GENERAL VARIABLES
##############################
#lettertemplate="letter_template"
home=/data/GITLAB/latex_dossier
lettertemplate="LetterTemplate"
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
pdflatex --output-directory='includes/generate/out/' 'includes/generate/'"$lettertemplate"'.tex'
pdflatex --output-directory='includes/generate/out/' 'includes/generate/template.tex'

##############################
## COPY OUTPUT TO OUT
##############################
cp 'includes/out/letter/'"$lettertemplate"'.pdf' ./out/motivationsschreiben.pdf
cp 'includes/out/cv/cv_template.pdf' .

##############################
## CHECKING FOR PARAMETERS
##############################
if [[ $1 == "show" ]]
then
    evince "./out/motivationsschreiben.pdf"
fi

