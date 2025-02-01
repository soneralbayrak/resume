#!/usr/bin/env bash

pdflatex index.tex &&
mv index.pdf soner_albayrak_resume.pdf &&
mv index.tex index_temp.tex &&
rm -f index.* &&
mv index_temp.tex index.tex &&

git add . &&
git commit -am "auto_commit" &&
git push