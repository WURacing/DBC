#!/bin/bash

if [ "$1" == "-h" ]
then
	echo Usage: "$0" folder_name
	exit 0
fi

cd "$1"
export TEMPLATES=../templates.dbc2c

for i in *.dbc; do
	cat "$i" | iconv -f CP1252 | mawk -f ../dbc2c.awk > "${i%.dbc}".h
done
