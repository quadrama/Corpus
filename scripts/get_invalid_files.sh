xmllint --noout --schema ./MinimalStructure.xsd ../tei/*.xml 2>&1 | grep 'fails to validate' | sort -u | cut -d' ' -f1 | cut -d'/' -f3
