$CMDS = $args[0..($args.Count - 2)]
$ARG = $args[-1]
$DIR = Split-Path -Parent $ARG
$REALDIR = (Get-Item -LiteralPath $DIR).FullName -replace '\\', '/'
$NAME = Split-Path -Leaf $ARG

# Convert the file to LF line endings
(Get-Content -Raw -Path $ARG) -replace "`r`n", "`n" | Set-Content -NoNewline -Force -Path $ARG

# Run the Docker command with the correctly formatted path
docker run --rm -v "${REALDIR}:/usr/src" ghcr.io/jakuj/raise-tools:main $CMDS "./$NAME"