# README

Contains examples for generating facts and running queries with Souffle.

### Scripts

- In `liveness`, running `./run.sh` runs the script to generate input facts from `source` and outputs liveness for the input language. See the `run.sh` script to see how things are invoked.

- In `call-graph`, running `./run.sh` runs the script to generate input facts from `zls.facts.txt` (substitute this with other input if you like). 


### Example


You can run a short example to output a call chain for `zls.facts.txt` with:

```
souffle -t explain cg-analysis.dl
```

and enter

```
explain calls("main", "openFile")
```

at the prompt. You'll see something like:

```
souffle -t explain cg-analysis.dl
Enter command > explain calls("main", "openFile")
                               edge("loadConfigFile", "openFile")
                               -------------------------------(R2)
edge("main", "loadConfigFile") calls("loadConfigFile", "openFile")
---------------------------------------------------------------(R1)
                     calls("main", "openFile")
```

**NOTE**: The scripts are set up to provide an easy way of running examples, but are not suitable for running Datalog queries over large numbers of facts or inputs, because they generate all derived facts. To optimize for queries, you need to emit facts that are tab-separated, to a separate `.facts` file, that Souffle reads in. This can take a minute or two. Better yet, you can compile your engine rather than using interactive queries. Please see the Souffle documentation for doing that.
