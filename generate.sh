##############################
## SET GENERAL VARIABLES
##############################
#lettertemplate="letter_template"
lettertemplate="LetterTemplate"

##############################
## CREATING OUT DIRECTORIES
##############################
mkdir -p out/arbeitszeugnisse
mkdir out/zertifikate
mkdir -p includes/out/letter
mkdir includes/out/cv

##############################
## GENERATE THE TEMPLATES
##############################
pdflatex --output-directory='includes/out/letter/' 'includes/templates/letter/'"$lettertemplate"'.tex'
pdflatex --output-directory='includes/out/cv/' 'includes/templates/cv/template.tex'

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

