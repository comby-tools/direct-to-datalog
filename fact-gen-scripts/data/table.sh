#!/bin/bash

tar xvfj facts.tar.bzip2

projs="go kubernetes syncthing zig zls dida linux"

> table.txt

for p in $projs; do
	echo $p
	cat $p.facts.txt | sed '/^\s*$/d' | wc -l
        cat $p.stats
	echo "----------------------------------------"
done
