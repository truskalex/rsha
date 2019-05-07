#!/bin/bash
#
echo -n "Sisesta uue kasutaja kasutajanimi: "
read kasutaja
useradd -r -m -s /bin/bash $kasutaja
