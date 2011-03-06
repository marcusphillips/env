#! /bin/bash

for F in `ls -a files | grep --color=never "\.[^.]\{1,\}"`; do
    echo $F
    cp -fr ~/$F files/;
done;
