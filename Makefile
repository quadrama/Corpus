test:
	xmllint --noout --schema scripts/MinimalStructure.xsd tei/*.xml
	perl scripts/validate_ids.pl tei/*.xml
