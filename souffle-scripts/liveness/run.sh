#!/bin/bash

rm -rf liveness-definitions-and-facts.dl liveness-output.csv

cp liveness-template.dl liveness-definitions-and-facts.dl
./fact-gen.sh >> liveness-definitions-and-facts.dl

souffle -F. -D. liveness-definitions-and-facts.dl
mv live.csv liveness-output.csv

echo 'Variables live at...'
echo "note: may-analysis implies final set has all variables live, this isn't a strongly live analysis."
cat liveness-output.csv
