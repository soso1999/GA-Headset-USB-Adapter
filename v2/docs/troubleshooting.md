# Troubleshooting — V2

## Sidetone funktioniert mit USB-Strom, verschwindet aber sobald die USB-Soundkarte am PC aktiv ist

Ursache beim Prototyp: Der aktive Kopfhörerausgang der USB-Soundkarte belastete den zugemischten Sidetone zu stark.

Finale Lösung:

```text
USB LEFT  -> 100 Ω -> J2 Tip
USB RIGHT -> 100 Ω -> J2 Ring

SIDETONE OUT -> 220 Ω -> J2 Tip
SIDETONE OUT -> 220 Ω -> J2 Ring
```

Diese Kombination funktionierte beim getesteten V2-Prototyp sehr gut.

## Tip und Ring versehentlich über einen Widerstand verbunden

Diesen Widerstand entfernen.

Tip und Ring sind die getrennten Stereo-Kanäle und dürfen nicht direkt miteinander gekoppelt werden.

Sidetone wird stattdessen über **zwei getrennte Widerstände** eingespeist.

## Leichtes Hintergrundgeräusch bei stark aufgedrehtem Sidetone

Mögliche Ursachen:

- zu hohe Mikrofon-Vorverstärkung
- lange/offene MIC-IN-Leitung
- elektromagnetische Einstreuung
- empfindlicher Kopfhörer-/Adapteraufbau

Beim getesteten Lightspeed Zulu 4 war im fertigen Aufbau kein störendes Hintergrundgeräusch wahrnehmbar.

Wenn Rauschen auffällt:

1. Gain-Trimmer nicht unnötig hoch einstellen.
2. MIC-IN-Leitung kurz halten.
3. Mikrofonleitung vom Step-Up-Wandler fernhalten.
4. MIC/GND bei Bedarf gemeinsam bzw. verdrillt führen.

## Kein Sidetone

Prüfen:

- ca. 12 V an OPA Pin 8 gegen Pin 4
- ca. 6 V am 6V_POINT
- ca. 6 V an OPA Pin 1 und Pin 7
- `SIDETONE OUT` etwa 0 V DC
- AC-Signal am `SIDETONE OUT` beim Sprechen
- Poti nicht vollständig heruntergedreht

## Sidetone zu laut oder verzerrt

Gain am 100-kΩ-Trimmer reduzieren.

Der getestete Prototyp funktionierte mit etwa 14,3 kΩ effektivem Trimmerwert sehr gut.

## PC-Audio deutlich leiser

Die 100-Ω-Serienwiderstände verursachen abhängig von Soundkarte und Headset eine gewisse Pegeländerung. Dies ist Teil der passiven Entkopplung.

Bei Bedarf PC-/Simulatorlautstärke anpassen. Widerstandswerte nicht ohne Prüfung drastisch reduzieren.

## Erprobungsgrenzen

Der dokumentierte Aufbau ist ein erfolgreicher Einzelprototyp. Es wurden keine standardisierten Messungen zu Frequenzgang, Klirrfaktor, Rauschabstand, EMV oder Langzeitbetrieb durchgeführt.
