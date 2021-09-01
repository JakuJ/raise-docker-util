This repository contains a simple wrapper around a Docker image containing `rsltc` and `sml`.

# Installation

0. Make sure you have `coreutils` installed (e.g. `brew install coreutils` on MacOS)
1. Clone the [Formal-Aspects-Docker](https://github.com/HerrKatzen/Formal-Aspects-Docker) repository and build the image (with the default name).
2. Place the `raise.sh` script in a directory in your `$PATH` for convenience.

# Usage

The script forwards all arguments to the image. The last argument **must be** a filepath.

```bash
raise.sh rsltc    <file.rsl> # typecheck
raise.sh rsltc -m <file.rsl> # compile to SML
raise.sh sml      <file.sml> # run SML
```
