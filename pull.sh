#! /bin/bash

for F in `ls -a files | grep --color=never "\.[^.]\{1,\}"`; do
    cp -fr ~/$F files/;
done;
