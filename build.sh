#!/bin/bash

asciidoctor --failure-level=WARN -a linkcss -a icons=font -a toc=left -a systemtimestamp=$(date +%s) index.adoc