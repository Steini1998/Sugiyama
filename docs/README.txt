Das Projekt 'sugiyama' besteht aus den 3 Komponenten
(a) 'architecture'
(b) 'implementation'
(c) 'demo'

Binaries:
Die Komponenten (a) und (b) werden als statische Bibliothek (.lib-Dateien) unter dem jeweiligen Binary-Ordner "bin" zur Verfuegung gestellt.
Komponente (c) liefert ausfuehrbare Programme unter dessen Binary-Ordner.

(a) 'architecture'
Die Komponente 'architecture' liefert ein Grundgeruest fuer den Sugiyama-Algorithmus.
Dabei dient die Klasse 'sugiyama' als Fassade.
Diese kann mit 'step'-Objekten und einem 'step_user_interface' konfiguriert werden.
Der Aufbau der Komponente ist in dem UML-Diagramm "UML_Sugiyama.drawio" genauer beschrieben.

(b) 'implementation'
Die Komponente 'implementation' liefert Implementierungen der Interfaces 'step' und 'step_user_interface'.

(c) 'demo'
Die Komponente 'demo' liefert Anwendungsfaelle des Sugiyama-Algorithmus, indem sie die Architektur aus (a)
und Implementierungen aus (b) in einer Demo zusammenfuehrt.