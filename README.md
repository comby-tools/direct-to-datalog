# Direct-to-Datalog

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.5520885.svg)](https://doi.org/10.5281/zenodo.5520885)

Repository for generating end-to-end Datalog fact generation and analysis using declarative program transformation. Part
of in-submission manuscript.

- Install `comby` version `1.7.0`.
  - `brew install comby` on Mac OS X
  - [See instructions](https://github.com/comby-tools/comby#install-pre-built-binaries) for other platforms or building from source.

## Layout

- `fact-gen-scripts` for scripts to generate facts with `comby`, and data used in the manuscript
- `call-graph-scripts` for running comby and callvis, and generating visual graphs used in the manuscript
- `souffle-scripts` for running souffle Datalog queries against generated `comby` facts
