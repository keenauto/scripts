#! /bin/bash

#s stands for substitude.
#/^#/ regex pattern. "^" character means begining of the line, and "#" is the 
#comment character we want to add/remove.

#Comment lines
sed -i '/text_to_comment_out/s/^/#/g' file

#Uncomment lines
sed -i '/text_to_uncomment/s/^#//g' file
