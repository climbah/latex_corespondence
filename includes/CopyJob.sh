#cleanup 
rm generate -r
mkdir -p generate/out
#copy
cp templates/letter/* ./generate/
#c
cp templates/cv/* -r ./generate/
cp include.tex ./generate/
cp letter_dynamic_data.tex ./generate/
cp letter_static_data.tex ./generate/
cp docs/* -r ./generate/
