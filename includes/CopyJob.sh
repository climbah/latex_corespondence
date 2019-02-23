rm generate -r
mkdir -p generate/out
cp templates/letter/* ./generate/
echo 'asdf'
cp templates/cv/* -r ./generate/
cp include.tex ./generate/
cp letter_dynamic_data.tex ./generate/
cp letter_static_data.tex ./generate/
