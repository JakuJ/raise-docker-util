$CMDS = $args[0..($args.Count - 2)]
$ARG = $args[-1]
$REALDIR = (Get-Item -LiteralPath $ARG).FullName -replace '\\', '/'
$DIR = Split-Path -Parent $REALDIR
$NAME = Split-Path -Leaf $REALDIR

# Convert the file to LF line endings
(Get-Content -Raw -Path $REALDIR) -replace "`r`n", "`n" | Set-Content -NoNewline -Force -Path $REALDIR

# Run the Docker command with the correctly formatted path
docker run --rm -v "${DIR}:/usr/src" ghcr.io/jakuj/raise-tools:main $CMDS "./$NAME"