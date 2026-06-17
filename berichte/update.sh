#!/bin/bash

git stage .

git commit -m "update"

git pull main

git push main
