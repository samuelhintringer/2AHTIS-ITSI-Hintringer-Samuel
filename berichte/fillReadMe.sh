#!/bin/bash
{
    echo -e "# Arbeitsberichte"\n
    for file in 2*.md; do
        basename=$(basename "$file" .md)

        jahr="20${basename:0:2}"
        monat="${basename:2:2}"
        tag="${basename:4:2}"

        echo "[Arbeitsbericht vom ${tag}.${monat}.${jahr}](berichte/${basename}.html)"
    done
} > ReadMeLinks.tx

{
    echo -e "# Arbeitsberichte"\n
    for file in 2*.md; do
        basename=$(basename "$file" .md)

        jahr="20${basename:0:2}"
        monat="${basename:2:2}"
        tag="${basename:4:2}"

        echo "[Arbeitsbericht vom ${tag}.${monat}.${jahr}](berichte/${basename}.html)"
    done
} > ../README.md