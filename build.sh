#!/bin/bash

regen=0;
if [[ ! -f resume.pdf ]]; then
    regen=1
elif [[ "$(find .  -type f -not -name '*.log' -a -newer resume.pdf)" == "" ]]; then
    echo "Up to date";
else 
    regen=1;
fi

if [[ $regen -eq 1 ]]; then
    echo "Regenerating"
    mv -f resume.pdf{,.old}  
    [[ -f resume.pdf ]] || echo | xelatex resume.tex
fi

[[ -f resume.pdf ]] && gnome-open resume.pdf <&- & less -G resume.log

