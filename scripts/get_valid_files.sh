#!/bin/sh

xmllint --noout --schema ./MinimalStructure.xsd ../tei/*.xml 2>&1 | grep 'validates' | sort -u | cut -d' ' -f1 | cut -d'/' -f3
