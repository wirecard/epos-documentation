#!/bin/bash

echo
echo "Starting build..."

asciidoctor --failure-level=WARN \
    -a linkcss -a stylesheet=main.css -a stylesdir=css \
    -a icons=font -a toc=left -a systemtimestamp="$(date +%s)" \
    index.adoc

if [[ "$?" -ne 0 ]]; then
    echo "::error file=build.sh::Build failed."
    exit 1
fi

echo "Build done!"