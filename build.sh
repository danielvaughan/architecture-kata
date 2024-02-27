#!/bin/bash
markdownlint **/*.md
cd materials
rm -r pdf
mkdir -p ./pdf; for f in ./p*.md; do pandoc "$f" -s -f markdown -t pdf -o "pdf/${f%.md}.pdf"; done
mkdir -p ./pptx; pandoc introduction-presentation.md  -o "pptx/introduction-presentation.pptx"
