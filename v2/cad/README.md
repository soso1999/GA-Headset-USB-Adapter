# GA Headset USB Adapter V2 — Gehäuse und Sidetone-Knauf

Diese CAD-Dateien gehören zum getesteten V2-Prototyp.

Der V2-Aufbau wurde mit diesem Gehäuse und dem separat gedruckten Sidetone-Knauf praktisch aufgebaut. Gehäuse, Zwischenablage und Knauf haben beim realen Aufbau gepasst.

## Dateien

### Parametrische OpenSCAD-Quellen

- `GA_Headset_V2.scad`
- `GA_Headset_V2_Knauf.scad`

### Druckfertige STL-Dateien

- `stl/GA_Headset_V2_Unterteil.stl`
- `stl/GA_Headset_V2_Deckel.stl`
- `stl/GA_Headset_V2_Zwischenablage.stl`
- `stl/GA_Headset_V2_Knauf.stl`

Die Zwischenablage trennt die V1- und V2-Platine elektrisch und mechanisch voneinander und ersetzt eine provisorische Karton-Zwischenlage.

## Gehäuse

Außenmaße geschlossen:

**100 × 82 × 58 mm**

Wand, Boden und Deckelplatte: ca. **2,6 mm**

Frontanordnung von links nach rechts:

| Funktion | X-Mitte | Höhe über Boden | Lochdurchmesser |
|---|---:|---:|---:|
| Sidetone-Poti | 22 mm | 43 mm | 10,2 mm |
| PJ-068 Mikrofon | 50 mm | 43 mm | 9,9 mm |
| 6,35-mm Kopfhörer | 78 mm | 43 mm | 11,7 mm |

Platinen:

- V1: **70 × 50 mm**
- V2: **60 × 30 mm**

USB-Kabelausgang hinten mittig: oben offener Schlitz, ca. **6 mm breit × 8 mm tief**.

Vier M3-Deckelschrauben mit Heat-Set-Inserts sind vorgesehen.

## Sidetone-Knauf

- Außendurchmesser: ca. **20 mm**
- Höhe: **35 mm**
- Aufnahme: **6,10 mm**
- ausgelegt für den geriffelten Poti-Schaft mit ca. **5,86 mm**
- seitliches Pilotloch für M3-Madenschraube
- 40 Griffrillen und Positionsmarkierung

Die M3-Madenschraube sichert den Knauf auf dem Poti-Schaft.

## Druck

Die STL-Dateien liegen bereits in sinnvoller Druckorientierung vor.

Bewährter Ausgangspunkt:

- PLA oder PETG
- 0,2-mm-Schichthöhe
- mindestens 4 Wandlinien
- keine Skalierung

Bei einem anderen Drucker können insbesondere Frontloch-, Insert- und Knaufpassungen leicht abweichen.

## Geometrieprüfung

Unterteil, Deckel, Zwischenablage und Knauf wurden als geschlossene, zusammenhängende Meshes geprüft. Die zugehörigen Prüfdateien liegen unter `validation/`.

Die CAD-Prüfungen ersetzen keine Kontrolle der individuellen Bauteile und Drucktoleranzen. Für den hier dokumentierten V2-Prototyp wurden die Teile jedoch tatsächlich gedruckt und erfolgreich verwendet.

## Lizenz

CAD- und STL-Dateien stehen im Rahmen dieses Projekts unter **CERN-OHL-P-2.0**. Siehe `../../LICENSES/README.md`.
