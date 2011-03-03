#! /bin/bash

for F in `ls -a files | grep --color=never "\.[^.]\{1,\}[^~]$"`; do
	echo $F
	REPO=files/$F;
	DEST=$HOME/$F;
	cp -r $REPO $DEST;
done;
