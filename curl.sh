#!/bin/bash

names=("Noor" "Ariel" "Amina" "Elowen" "Levin")

for ((i=0; i<5; i++)); do

    curl "https://api.genderize.io/?name=${names[i]}"
    echo " "
done
