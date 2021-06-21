#!/bin/bash

files=$(find ~/Seafile/Papers -name "*.pdf")
OLDIFS=$IFS
IFS="."
for filename in $files
do
    pre=$filename
    filename=${filename#*/}
    newname=${filename//":"/"-"}

    filename="/${filename}.pdf"
    newname="/${newname}.pdf"
    $(mv "${filename}" "${newname}")
done
