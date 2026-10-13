# Upload-Anleitung für das V2-Update

Dieses ZIP ist als **Overlay** für das bestehende Repository gedacht.

## 1. ZIP entpacken

Die Ordnerstruktur nicht verändern.

## 2. Dateien in das bestehende Repository übernehmen

Ersetzen:

- `README.md`
- `CHANGELOG.md`
- `LICENSES/README.md`

Neu hinzufügen:

- `v2/README.md`
- `v2/hardware/BOM.md`
- `v2/hardware/BOM.csv`
- `v2/hardware/schematic.md`
- `v2/docs/wiring.md`
- `v2/docs/build.md`
- `v2/docs/troubleshooting.md`
- `releases/v2.0.0.md`
- `docs/images/v2-finished-device.jpg`
- `docs/images/v2-front-panel.jpg`
- `docs/images/v2-internal-wiring.jpg`
- `docs/images/v2-internal-layout.jpg`

Die bestehenden V1-Dateien **nicht löschen**.

## 3. Repository-Name optional ändern

Empfohlen:

`GA-Headset-USB-Adapter-V1`

zu

`GA-Headset-USB-Adapter`

GitHub richtet bei einer Repository-Umbenennung normalerweise Weiterleitungen von der alten URL ein. Vorher trotzdem externe Links prüfen.

## 4. GitHub Release

Nach dem Upload einen neuen Release anlegen:

Tag:

`v2.0.0`

Titel:

`GA Headset USB Adapter V2.0.0 — Analog Sidetone`

Als Release-Text kann der Inhalt von `releases/v2.0.0.md` verwendet werden.

## 5. SHA256SUMS.txt

Die bestehende `SHA256SUMS.txt` stammt vom V1-Dateistand und ist nach dem V2-Upload nicht mehr vollständig aktuell.

Sie sollte entweder separat neu erzeugt oder bis dahin klar als V1-Prüfsummen-Datei gekennzeichnet werden.

## 6. V2-CAD

Die V2-CAD-Dateien sind jetzt vollständig im Paket enthalten:

- `v2/cad/GA_Headset_V2.scad`
- `v2/cad/GA_Headset_V2_Knauf.scad`
- `v2/cad/stl/GA_Headset_V2_Unterteil.stl`
- `v2/cad/stl/GA_Headset_V2_Deckel.stl`
- `v2/cad/stl/GA_Headset_V2_Zwischenablage.stl`
- `v2/cad/stl/GA_Headset_V2_Knauf.stl`

Zusätzlich enthalten sind Vorschau- und Geometrieprüfdateien.

Die Teile wurden beim dokumentierten V2-Prototyp tatsächlich gedruckt und erfolgreich verwendet.
