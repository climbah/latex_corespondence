letter="letter_template"
##############################
# BACKUPS
##############################

##############################
# Generate INCLUDES
##############################
pdflatex --output-directory=includes/out/letter "includes/templates/${letter}.tex"
pdflatex --output-directory=includes/out/cv "includes/templates/cv_template.tex"

##############################
# COPY
##############################
cp "includes/out/letter/${letter}.pdf" "out/motivationsschreiben.pdf"
cp includes/out/cv/cv.pdf out/cv.pdf



##############################
# OPEN LETTER
#############################
#evince out/motivationsschreiben.pdf
