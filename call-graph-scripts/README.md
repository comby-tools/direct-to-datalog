# README

### Scripts

- `generate-raw-dot-outputs.sh` generates dot files for the `upgrade` packagae in the `syncthing` project. Edit the script to set your `GOPATH` if it's not `~/go`. See the script comments for specific commit hashes for callvis and syncthing. This script invokes the following script, which can be invoked separately:

- `generate-comby-raw-dot.sh` generates the dot file to visualize call edges found by comby in the `syncthing` project. Edit the script to set your `GOPATH` if it's not `~/go`.

### Data

The `*.raw.dot` files correspond to generated dot files for the above scripts. This output was manually processed to provide a visual comparison shown in the manuscript. The manually-process file is `combined.processed.dot`.

