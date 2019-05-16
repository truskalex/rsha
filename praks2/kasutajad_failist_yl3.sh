#!/bin/bash
if [ $# -ne 1 ]; then
	echo "Kasutusjuhend: $0 failinimi"
else
	failinimi=$1
	if [ -f $failinimi -a -r $failnimi ]; then
		echo "fail korras"
		for rida in $(cat $failinimi)
			do
			kasutajanimi=$(echo "$rida" | cut -f1 -d:)
			sh lisa_kasutaja $kasutajanimi
			echo "$rida" | chpasswd
		done
	else
		echo "probleem failiga $failinimi"
	fi
fi
