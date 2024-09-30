#!/bin/bash

find . -type f -name "*.mmp" | while read -r file; do
  xsltproc -o "$file" .sort-xml-attributes.xslt "$file"
done
