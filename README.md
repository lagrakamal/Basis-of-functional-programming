# Haskell-Funktionssammlung aus dem Studium

Dieses Projekt enthält eine Sammlung von Haskell-Funktionen, die während meines Studiums entwickelt wurden. Ziel war es, grundlegende rekursive und funktionale Programmierkonzepte zu erlernen und praktisch umzusetzen.

## Inhalt

Die Datei umfasst folgende Hauptthemenbereiche:

### Fakultät (Fakultätsberechnung)

- `fakul0`, `fakul1`: Rekursive Varianten
- `fakul2`, `s`: Iterative Varianten mit Akkumulator

### Fibonacci-Zahlen

- `fiborek`: Rekursive Berechnung
- `fiboiter`: Iterative Variante

### Summenfunktionen

- `sum2`, `sum4`, `sum5`, `sum6`: Verschiedene Arten von Summen über Listen oder Zahlenbereiche

### Listenfunktionen

- `elem2`, `elem3`, `elem5`: Prüfen, ob ein Element in einer Liste enthalten ist
- `nub2`, `nub5`: Duplikate aus einer Liste entfernen
- `isAsc2`, `isAsc5`: Prüfen, ob eine Liste aufsteigend sortiert ist
- `sublist`, `unterListe`: Teilmengen (Sublists) einer Liste erstellen
- `getrev`: Umkehrung einer Liste
- `checkPalindrom`: Überprüfen, ob eine Liste ein Palindrom ist

### Mathematische Hilfsfunktionen

- `digs`, `checksum`: Zahlen in Ziffern zerlegen und Prüfsummen berechnen
- `length6`: Länge eines Bereichs berechnen
- `midd1`: Mittelwert eines Zahlenbereichs berechnen
- `potenzIter`, `potenzRec`, `pPotenzIter`, `pPotenzRec`: Potenzberechnungen (iterativ und rekursiv)
- `quadrat`, `drittenPotenz`: Spezielle Potenzfunktionen

### Weitere Funktionen

- `kaufen`: Simuliert einen Kaufprozess mit Preissteigerung
- `listeZuPaar`: Teilt eine Liste von Tupeln in zwei separate Listen auf
- `fun1`, `fun2`, `fun3`, `fu`, `fo`, `f`, `fi`, `fa`: Verschiedene kleine Test- und Übungsfunktionen
- `map'`, `map''`: Eigene Implementierungen von `map`
- `take_while`, `take_while'`, `take_while''`: Eigene Implementierungen von `takeWhile`
- `editext`: Wandelt Wörter in Großschreibung um (erster Buchstabe wird groß)

## Lernziele

- Verständnis für **Rekursion** und **Iteration** in Haskell
- Praktische Übung mit **Pattern Matching**, **Guards**, **Higher-Order Functions** und **Lambda-Ausdrücken**
- Anwendung von **foldr**, **map**, **filter**, etc.
- Fehlerbehandlung durch Pattern-Matching (`[] -> error`)

## Verwendung

Zum Ausführen einzelner Funktionen kann GHCi verwendet werden:

```bash
ghci dateiname.hs
