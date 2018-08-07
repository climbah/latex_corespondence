##############################
## SET VARIABLES
##############################
lettertemplate="letter_template"

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
