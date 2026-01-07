#!/bin/bash

name=$1
file=$name.cpp

touch $file

cat < cpp.cpp > $file

chmod +x $file

g++ -o $name $file

echo if it worked there should something be written below or behind this
./$name



