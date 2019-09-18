# Corpus

This repository contains the main QuaDramA corpus. It is forked from GerDraCor (revision 526283b). Since then, we added a) some plays and b) various levels of annotations.


## Added plays

- Translations of Shakespeare plays
- Translations of Greek plays

## Annotations

### Character Relations

Character relations encode the information given in the *Dramatis Personae* and make it machine-readable. This is mainly about family and power relations.

#### Sub corpus

The following table shows an overview of the annotated sub corpus

| Id | Author | Title | #Relations | #Characters |
| ----- | ----- | ----- | ----- | ----- |
| 11f81.0.xml | Goethe, Johann Wolfgang | Clavigo | 2 | 10 |
| 11g5f.0.xml | Goethe, Johann Wolfgang | Der Großkophta | 4 | 25 |
| m0br.0.xml | Cronegk, Johann Friedrich von | Der Mißtrauische | 5 | 7 |
| n2kq.0.xml | Freytag, Gustav | Graf Waldemar | 6 | 19 |
| nfhm.0.xml | Gleich, Joseph Alois | Der Eheteufel auf Reisen | 20 | 49 |
| nmg0.0.xml | Grabbe, Christian Dietrich | Don Juan und Faust | 4 | 19 |
| pkh4.0.xml | Hauptmann, Carl | Gaukler, Tod und Juwelier | 0 | 33 |
| pkhm.0.xml | Hauptmann, Carl | Die armseligen Besenbinder | 3 | 32 |
| pkj2.0.xml | Hauptmann, Carl | Ephraims Breite | 4 | 29 |
| pkng.0.xml | Hebbel, Friedrich | Der gehörnte Siegfried | 6 | 9 |
| qggj.0.xml | Holz, Arno | Die Familie Selicke | 11 | 8 |
| qkp7.0.xml | Immermann, Karl | Das Gericht von St. Petersburg | 3 | 38 |
| r0jz.0.xml | Kleist, Heinrich von | Amphitryon | 3 | 15 |
| r1zm.0.xml | Klopstock, Friedrich Gottlieb | Der Tod Adams | 3 | 11 |
| r2mv.0.xml | Kotzebue, August von | Die beiden Klingsberg | 8 | 13 |
| rkpt.0.xml | Lessing, Gotthold Ephraim | Nathan der Weise | 4 | 14 |
| rkq6.0.xml | Lessing, Gotthold Ephraim | Der Misogyn | 3 | 7 |
| rksp.0.xml | Lessing, Gotthold Ephraim | Emilia Galotti | 4 | 13 |
| rktc.0.xml | Lessing, Gotthold Ephraim | Die Juden | 2 | 7 |
| rkzk.0.xml | Lessing, Gotthold Ephraim | Der Schatz | 3 | 8 |
| rkzp.0.xml | Lessing, Gotthold Ephraim | Damon, oder die wahre Freundschaft | 0 | 5 |
| s6kj.0.xml | Lortzing, Albert (Gustav) | Der Waffenschmied | 4 | 11 |
| sc8m.0.xml | Meisl, Karl | Der lustige Fritz | 8 | 30 |
| ssrb.0.xml | Müllner, Adolph | König Yngurd | 13 | 35 |
| t971.0.xml | Raimund, Ferdinand | Der Diamant des Geisterkönigs | 5 | 35 |
| tgw9.0.xml | Rosenow, Emil | Die im Schatten leben | 8 | 14 |
| v183.0.xml | Schink, Johann Friedrich | Der neue Doktor Faust | 2 | 4 |
| v3mw.0.xml | Schlegel, Johann Elias | Die stumme Schönheit | 4 | 8 |
| v3qp.0.xml | Schnitzler, Arthur | II. Der tapfere Cassian | 0 | 4 |
| v3vb.0.xml | Schnitzler, Arthur | Liebelei | 2 | 9 |
| vhgn.0.xml | Schröder, Friedrich Ludwig | Der Vetter in Lissabon | 7 | 12 |
| vrdc.0.xml | Stephanie, Johann Gottlieb (der Jüngere) | Der Schauspieldirektor | 0 | 10 |
| x37q.0.xml | Wedekind, Frank | Franziska. Ein modernes Mysterium in fünf Akten | 2 | 38 |
| x4q9.0.xml | Weiße, Christian Felix | Die Jagd | 4 | 15 |
| x9jv.0.xml | Wohlbrück, Wilhelm August | Der Vampyr | 9 | 28 |


#### Relations

The following relations have been annotated:

| Relation label | Directed/Undirected | Description |
| ----- | ----- | ------ |
| `parent_of` | directed | One character is a parent of the other | 
| `lover_of` | directed | For lovers | 
| `related_with` | directed | Other **family** relations (e.g. uncles) | 
| `associated_with` | directed | For clearly associated characters (e.g., butlers) | 
| `siblings` | undirected | Characters that have at least one parent in common |
| `spouses` | undirected | Characters in marriage (or engaged) |
| `friends` | undirected | Characters marked as being friends |

All relations are marked in XML in a `<listRelation>` element in the `<listPerson>` element. Directed relations are encoded with an `active` and `passive` attribute, where the active part is always the one in front of the relation, if expressed as a sentence. E.g., *Odoardo is parent of Emilia* translates to a relation
	
	<relation name="parent_of" active="#odoardo_galotti" passive="#emilia" />

Undirected relations use the `mutual` attribute to list all ids in the relationship:
	
	<relation type="personal" name="spouses" mutual="#bärbel #adam"/>

The label from the table above is given as a `name`. 

## XML
*What you **really** need to know about the XML structure*

- **Character speech** is enclosed in `<sp>`-tags. `<sp>`-tags should have a `who` attribute that specifies who speaks (by listing their ids). If the character speech is in verse, it is given in lines with `<l>`-tags, otherwise it is in `<p>`-tags.
- **Speaker declarations** are enclosed in `<speaker>`-tags, and are placed within a character speech (i.e., within an `<sp>`-tag).
- **Stage directions** are enclosed in `<stage>`-tags, even if they are within a character speech.
- Initial or concluding remarks (e.g., "Ende des Trauerspiels") are not part of a character's speech, and are enclosed in `<trailer>`-tags.
- **Speakers ids** should be declared in the header of the TEI file (i.e., **not** in the dramatis personae section), under `profileDesc/particDesc/listPerson`.
- **Emphasis** should be marked with `<emph>` (it is often marked as `<hi>`, which is too generic).
