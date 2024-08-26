This repository contains wrappers around a Docker image containing `rsltc` and `sml`.

Docker image source: https://github.com/JakuJ/RAISE-tools

# Prerequisites

The scripts use a Docker image, so make sure you have Docker installed from https://docs.docker.com/get-docker/.

**[macOS/Linux only]** You might have to install `coreutils`. On Mac you can use the Homebrew package manager (`brew install coreutils`) and on Linux, use `sudo apt install coreutils`.

# Usage

The scripts forwards all arguments to the Docker container. The last argument **must be** a filepath.

```bash
raise.sh rsltc    <file.rsl> # typecheck
raise.sh rsltc -m <file.rsl> # compile to SML
raise.sh sml      <file.sml> # run SML
```

You can copy the `raise.sh` script to any directory in your `$PATH` (Linux/macOS). For Windows, do the same with the `raise.ps1` Powershell script. Here's how: https://windowsloop.com/how-to-add-to-windows-path/.

# Caveats

On Windows, you might need to pass absolute paths to RSL/SML files, like so:

```powershell
raise.ps1 rsltc "C:\path\to\my\file.rsl"
```