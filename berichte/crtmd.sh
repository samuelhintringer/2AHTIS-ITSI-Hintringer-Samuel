#!/usr/bin/env bash

name=$(date +"%y%m%d")

cat << EOF > $name.md
# Arbeitsbericht

- Name: Samuel Hintringer
- Fach: ITSI-Übunugen
- Datum: $(date +"%d.%m.%Y")
- Klasse: 2AHITS
- Thema: $1
- Aufgaben: $2
EOF
