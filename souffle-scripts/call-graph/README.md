# Running

# Interactive query example

## Example


Provenance

```
souffle -t explain cg-analysis.dl
Enter command > explain calls("main", "openFile")
                               edge("loadConfigFile", "openFile")
                               -------------------------------(R2)
edge("main", "loadConfigFile") calls("loadConfigFile", "openFile")
---------------------------------------------------------------(R1)
                     calls("main", "openFile")
```

Query

```
souffle -t explain cg-analysis.dl
Enter command > query calls("main", x)
x = openFile
use ; to find next solution, use . to break from current query
```
