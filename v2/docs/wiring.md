# Verdrahtung — V2

V1 bleibt grundsätzlich erhalten. V2 wird als Zusatzplatine angeschlossen.

## V2-Zusatzplatine an V1

| Von | Nach |
|---|---|
| V1 ca. +12 V | V2 Eingang vor 47-Ω-Filterwiderstand |
| V1 GND | V2 GND |
| PJ-068 Ring | V2 MIC IN vor 1,5-µF-Folienkondensator |

Da V1 und V2 dieselbe Versorgung verwenden, ist GND bereits gemeinsam. Eine zweite separate Masseleitung von der PJ-068-Buchse ist elektrisch nicht erforderlich.

## Kopfhörerweg

Die bisherigen direkten L/R-Verbindungen von der USB-Soundkarte zur Kopfhörerbuchse werden aufgetrennt und jeweils mit 100 Ω in Serie versehen.

```text
USB LEFT  -> 100 Ω -> J2 Tip
USB RIGHT -> 100 Ω -> J2 Ring
```

Sidetone wird anschließend getrennt auf beide Kanäle gegeben:

```text
SIDETONE OUT -> 220 Ω -> J2 Tip
SIDETONE OUT -> 220 Ω -> J2 Ring
```

J2 Sleeve bleibt GND.

## Wichtig

Zwischen J2 Tip und J2 Ring darf kein einzelner Mischwiderstand liegen.

Ein Widerstand direkt zwischen Tip und Ring koppelt die beiden Stereo-Kanäle und ist nicht Teil der finalen V2-Verdrahtung.

## Leitungsführung

- MIC-IN-Leitung möglichst kurz halten.
- Empfindliche Mikrofonleitung möglichst weit vom Step-Up-Wandler entfernt führen.
- Falls nötig MIC und GND als Paar führen bzw. leicht verdrillen.
- OPA-100-nF-Abblockkondensator möglichst nah an Pin 8 und Pin 4 platzieren.
