raise-docker-util

# Installation

0. Make sure you have `coreutils` installed (`brew install coreutils` on MacOS)
1. Clone the [Formal-Aspects-Docker](https://github.com/HerrKatzen/Formal-Aspects-Docker) repo and build the container at least once.
2. Add this script to your `$PATH` for convenience.

# Usage

```bash
raise.sh check <file> # runs rsltc on file
raise.sh compile <file> # runs "rsltc -m" on file
raise.sh sml <file> # runs sml on file
```
