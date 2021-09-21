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

# Zig
comby 'fn $f(...) $r? {$*body}' '$body' -rule 'where nested, rewrite $body { $c($*ign) -> `edge("$f", "$c").` }' -timeout 120 -d $DIR -omega -stdout -newline-separated $LANG -lang $LANG -custom-metasyntax ./dsl.json -stats -custom-matcher zig.json > $DIR.facts.txt 2> $DIR.stats
