#!/bin/bash
# This script takes a html page from the juris portal and converts it into text via the lynx browser
# example page can be found here: http://www.gesetze-im-internet.de/bbg_2009/BJNR016010009.html
lynx -dump -nolist $1 | sed '/Nichtamtliches Inhaltsverzeichnis/d'| sed '/Logo juris Logo Bundesministerium der Justiz/d' | sed '1,1d' > current.txt
cp current.txt "`cat current.txt | sed -n '1p'`.txt"
