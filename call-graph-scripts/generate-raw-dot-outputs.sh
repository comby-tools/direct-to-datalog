#!/bin/bash


export GOPATH=~/go


# 71bdc75f8bf8f3730757679bb7c645ee2fcfd3d1
go get -u github.com/ofabry/go-callvis

# 400d62c1e6d988e16510875f24e50752c5f5ee88
go get -u github.com/syncthing/syncthing
cd ~/go/src/github.com/syncthing/syncthing
./build.sh


# launch a server, since the command line invocation doesn't seem to work
go-callvis -limit github.com/syncthing/syncthing github.com/syncthing/syncthing/cmd/syncthing

# open a separate terminal...

# grab the dot format from the server
curl http://localhost:7878/?f=github.com/syncthing/syncthing/lib/upgrade&format=dot > upgrade-callvis.dot

# generate callvis's visual callgraph output
cat upgrade-callvis.dot | dot -Tpng -o upgrade-callvis.png

# generate comby's visual callgraph output
./generate-comby-raw-dot.sh

