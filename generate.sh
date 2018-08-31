##############################
## SET GENERAL VARIABLES
##############################
lettertemplate="letter_template"
##############################
## CHECKING FOR PARAMETERS
##############################
if [[ $1 != "" ]]
then
    lettertemplate=$1
    echo $lettertemplate
fi

##############################
## GENERATE THE TEMPLATES
##############################
pdflatex --output-directory='includes/out/letter/' 'includes/templates/'"$lettertemplate"'.tex'
pdflatex --output-directory='includes/out/cv/' 'includes/templates/cv_template.tex'
##############################
## COPY OUTPUT TO OUT
##############################
cp 'includes/out/letter/'"$lettertemplate"'.pdf' ./out/motivationsschreiben.pdf
cp 'includes/out/cv/cv_template.pdf' .
