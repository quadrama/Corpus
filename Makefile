test:
	xmllint --noout tei/*.xml
	perl scripts/validate_ids.pl *.xml
