#! /bin/bash

for F in `ls -a files | grep --color=never "\.[^.]\{1,\}"`; do

	REPO = files/$F;
	DEST = $HOME/$F;
	LOCAL = $dest.local;

	echo "# Changes to this file will eventually be overwritten. Edit $LOCAL instead
" > $DEST
	cat $REPO >> $DEST;
	cat $LOCAL >> $DEST
done;