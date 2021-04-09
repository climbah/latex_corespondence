template="letter_template"
echo -n "Enter Template: "
read inp
if [[ $inp != "" ]]
then
   template=$inp
fi
echo 'Template=' $template
