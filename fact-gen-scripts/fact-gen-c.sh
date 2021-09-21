#!/bin/bash

DIR=$1
LANG=$2

if [ -z "$DIR" ]; then
	echo "./run <dir> <lang>"
	exit 1
fi

if [ -z "$LANG" ]; then
	echo "./run <dir> <lang>"
	exit 1
fi


# C
comby '$f(...) {$*body}' '$body' -rule 'where nested, rewrite $body { $s($*ign) -> `edge("$f", "$s").` }' -timeout 120 -d $DIR -omega -stdout -newline-separated $LANG -lang $LANG -custom-metasyntax ./dsl.json -stats > $DIR.facts.txt 2> $DIR.stats
