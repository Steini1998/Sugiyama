Das Projekt 'sugiyama' besteht aus den 3 Komponenten
(a) 'architecture'
(b) 'implementation'
(c) 'demo'

Binaries:
Die Komponenten (a) und (b) werden als statische Bibliothek (.lib-Dateien) unter dem jeweiligen Binary-Ordner "bin" zur Verfügung gestellt.
Komponente (c) liefert ausführbare Programme unter dessen Binary-Ordner.

(a) 'architecture'
Die Komponente 'architecture' liefert ein Grundgerüst für den Sugiyama-Algorithmus.
Dabei dient die Klasse 'sugiyama' als Fassade.
Diese kann mit 'step'-Objekten und einem 'step_user_interface' konfiguriert werden.
Der Aufbau der Komponente ist in dem UML-Diagramm "UML_Sugiyama.drawio" genauer beschrieben.

(b) 'implementation'
Die Komponente 'implementation' liefert Implementierungen der Interfaces 'step' und 'step_user_interface'.

(c) 'demo'
Die Komponente 'demo' liefert Anwendungsfälle des Sugiyama-Algorithmus, indem sie die Architektur aus (a)
und Implementierungen aus (b) in einer Demo zusammenführt.


Anleitung zum Download und Build des Projekts:

(1) Projekt klonen (mit Sub-Projekten) in einen eigenen Ordner "sugiyama"

> git clone --recurse-submodules https://github.com/Steini1998/Sugiyama.git sugiyama

(2) In den Ordner "sugiyama" wechseln

> cd sugiyama

(3) Makefile ausführen, welche sich in dem Root-Ordner "sugiyama" befindet. 
	(Alternativ: Makefiles einzeln in allen Sub-Projekten ausführen) 
	
	Dabei ggf. die Variablen "LEDA_INCLUDE_DIR", "LEDA_LIBRARY_DIR" und "LEDA_LIB" anpassen:
		- "LEDA_INCLUDE_DIR" sollte auf den Ordner zeigen, der die Header-Files der Standard-LEDA-Bibliothek enthält
		- "LEDA_LIBRARY_DIR" sollte auf den Ordner zeigen, der die (statische) Standard-LEDA-Bibliothek enthält
		- "LEDA_LIB" sollte ausschliesslich den Namen der (statischen) Standard-LEDA-Bibliothek enthalten
	
	Achtung:
		- Bei der Angabe von relativen Pfaden für "LEDA_INCLUDE_DIR" und "LEDA_LIBRARY_DIR" muss der Pfad relativ zu 
			den Sub-Projekten angegeben werden, welche alle eine Hierarchie unter dem Parent-Projekt liegen.
			(Das folgende "make"-Beispiel hat die Ordner "LEDA" und "sugiyama" innerhalb des gleichen Ordners.)
			
		- Die Ausführung der Makefiles funktioniert nur innerhalb des Visual-C++-Terminals, da dieser die 
			korrekten System-Variablen gesetzt hat.
	
> make LEDA_INCLUDE_DIR=..\..\LEDA\incl LEDA_LIBRARY_DIR=..\..\LEDA\lib LEDA_LIB=leda.lib


Anleitung zum Updaten des bereits gedownloadeten Projekts:

(1) Projekt innerhalb den Root-Ordners "sugiyama" updaten

> git submodule update --remote