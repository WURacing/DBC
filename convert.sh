#!/bin/bash

if [ "$1" == "-h" ]
then
	echo Usage: "$0" folder_name
	exit 0
fi

cd "$1"
export TEMPLATES=../templates.dbc2c

for i in *.dbc; do
	echo "#define ubyte uint8_t" > "${i%.dbc}".h
	echo "#define uword uint16_t" >> "${i%.dbc}".h
	cat "$i" | iconv -f CP1252 | awk -f ../dbc2c.awk >> "${i%.dbc}".h
done
