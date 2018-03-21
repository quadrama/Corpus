test:
	xmllint --noout data/*.xml
	perl scripts/validate_ids.pl data/1774-Goethe_Johann_Wolfgang_von-Clavigo-lina.xml
	perl -CAioIOE scripts/validate_ids.pl data/1773-Goethe_Johann_Wolfgang_von-Götz_von_Berlichingen_mit_der_eisernen_Hand-lina.xml
	perl -CAioIOE scripts/validate_ids.pl data/1755-Lessing_Gotthold_Ephraim-Miß_Sara_Sampson-lina.xml
	perl scripts/validate_ids.pl data/1772-Lessing_Gotthold_Ephraim-Emilia_Galotti-lina.xml
	perl scripts/validate_ids.pl data/1776-Goethe_Johann_Wolfgang_von-Stella-lina.xml
	perl scripts/validate_ids.pl data/1768-Gerstenberg_Heinrich_Wilhelm_von-Ugolino-lina.xml
	perl scripts/validate_ids.pl data/1777-Klinger_Friedrich_Maximilian-Sturm_und_Drang-lina.xml
	perl scripts/validate_ids.pl data/1776-Klinger_Friedrich_Maximilian-Die_Zwillinge-lina.xml
	perl scripts/validate_ids.pl data/1776-Klinger_Friedrich_Maximilian-Die_neue_Arria-lina.xml
	perl scripts/validate_ids.pl data/1776-Klinger_Friedrich_Maximilian-Simsone_Grisaldo-lina.xml
	perl scripts/validate_ids.pl data/1776-Leisewitz_Johann_Anton-Julius_von_Tarent-lina.xml
	perl scripts/validate_ids.pl data/1776-Lenz_Jakob_Michael_Reinhold-Die_Soldaten-lina.xml
	perl scripts/validate_ids.pl data/1774-Lenz_Jakob_Michael_Reinhold-Der_Hofmeister_oder_Vorteile_der_Privaterziehung-lina.xml
	perl scripts/validate_ids.pl data/1774-Lenz_Jakob_Michael_Reinhold-Der_neue_Menoza_oder_Geschichte_des_cumbanischen_Prinzen_Tandi-lina.xml
	perl -CAioIOE scripts/validate_ids.pl data/1782-Schiller_Friedrich-Die_Verschwörung_des_Fiesco_zu_Genua-lina.xml
	perl -CAioIOE scripts/validate_ids.pl data/1781-Schiller_Friedrich-Die_Räuber-lina.xml
	perl scripts/validate_ids.pl data/1776-Wagner_Heinrich_Leopold-Die_Kindermörderin-lina.xml
	perl scripts/validate_ids.pl data/1844-Hebbel_Friedrich-Maria_Magdalene-lina.xml
	perl -CAioIOE scripts/validate_ids.pl data/1776-Wagner_Heinrich_Leopold-Die_Kindermörderin-lina.xml
	perl -CAioIOE scripts/validate_ids.pl data/1776-Engel_Johann_Jakob-Eid_und_Pflicht-lina.xml
	perl -CAioIOE scripts/validate_ids.pl data/1895-Schnitzler_Arthur-Liebelei-lina.xml
	perl -CAioIOE scripts/validate_ids.pl data/1756-Pfeil_Johann_Gottlob_Benjamin-Lucie_Woodvil-lina.xml
	perl -CAioIOE scripts/validate_ids.pl data/1784-Schiller_Friedrich-Kabale_und_Liebe-lina.xml 

