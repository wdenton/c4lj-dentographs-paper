#!/bin/sh

FINAL=index.html
rm -f $FINAL

markdown dentograph-paper.markdown > dentograph-paper.html
cat header.html dentograph-paper.html footer.html >> $FINAL

