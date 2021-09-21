#!/bin/bash

export GOPATH=~/go

comby 'func $f(...) $r? {$*body}' '$body' -rule 'where nested, rewrite $body { $c($*ign) -> `"$f" -> "$c"` }' \
	-d $GOPATH/src/github.com/syncthing/syncthing/lib/upgrade \
	-omega -stdout -newline-separated .go -lang .go -custom-metasyntax dsl.json -stats | sort -u > facts.txt

HEADER='
digraph gocallvis {
    label="github.com/syncthing/syncthing/cmd/syncthing";
    labeljust="l";
    fontname="Arial";
    fontsize="14";
    rankdir="LR";
    bgcolor="lightgray";
    style="solid";
    penwidth="0.5";
    pad="0.0";
    nodesep="0.35";
'

echo "$HEADER" > upgrade-comby.dot
cat facts.txt >> upgrade-comby.dot
echo "}" >> upgrade-comby.dot

cat upgrade-comby.dot | dot -Tpng -o upgrade-comby.png
