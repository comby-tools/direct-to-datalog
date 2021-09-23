# README

### Scripts

- `clone.sh` clones the repositories evaluated to the current directory. For specific commit hashes see the script comments.
- `fact-gen-c.sh` generates facts for C projects. Invoke it like `./fact-gen-c.sh linux .c` for a linux directory in the current repository.
- `fact-gen-go.sh` is as above, but for Go. Invoke it like `./fact-gen-go.sh syncthing .go` for example.
- `fact-gen-zig.sh` is as above, but for Zig. Invoke it like `./fact-gen-zig.sh zls .zig` for example.

### Data

The `data` directory contains the output of running the above in `table.txt`. `table.sh` producs `table.txt` from the raw outputs, zipped in `facts.tar.bzip2`.
