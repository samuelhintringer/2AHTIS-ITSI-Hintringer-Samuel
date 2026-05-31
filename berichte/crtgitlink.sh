#!/usr/bin/env bash

link="https://samuelhintringer.github.io/2AHTIS-ITSI-Hintringer-Samuel/berichte/"

for b in $(ls 2*.md)
do
	echo $link${b/md/html}
done

