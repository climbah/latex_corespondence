#!/usr/bin/env bash
home=.
cd conf
ls -lah | grep a

#evince ./out/motivationsschreiben.pdf

read -p 'Archive Name: ' name
7z a $name.7z *.tex
mv $name.7z ./../Archiv/
echo ''"$name"'.7z'
