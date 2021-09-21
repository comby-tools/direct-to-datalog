#!/bin/bash

cp cg-analysis-template.dl cg-analysis.dl

cat zls.facts.txt >> cg-analysis.dl

souffle -F. -D. cg-analysis.dl

echo 'Showing first 10 results for call relations in zls.facts.txt...'
head calls.csv
