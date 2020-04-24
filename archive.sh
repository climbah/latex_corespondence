#!/usr/bin/env bash
cd Archiv
ls -lah | grep a

#evince ./out/motivationsschreiben.pdf

read -p 'Archive Name: ' name
cd ../conf/
7z a $name.7z *.tex
mv $name.7z ./../Archiv/
echo ''"$name"'.7z'
