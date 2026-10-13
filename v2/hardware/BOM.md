# Stückliste — V2 Sidetone-Zusatzplatine

Diese Liste beschreibt die Zusatzteile für die getestete V2-Sidetone-Erweiterung. Die V1-Bauteile bleiben zusätzlich erforderlich.

| Referenz | Menge | Bauteil | Wert / Typ | Hinweis |
|---|---:|---|---|---|
| U3 | 1 | Dual Audio Op-Amp | OPA2134PA, DIP-8 | Sidetone-Vorverstärker und Buffer |
| SOCK1 | 1 | IC-Sockel | DIP-8 | empfohlen |
| R10 | 1 | Versorgungswiderstand | 47 Ω | V2-Versorgungsfilter |
| R11, R12 | 2 | Widerstand | 22 kΩ | Erzeugen den ca. 6-V-Hilfspunkt |
| R13 | 1 | Widerstand | 100 kΩ | OPA-Eingang gegen 6-V-Hilfspunkt |
| R14 | 1 | Widerstand | 10 kΩ | fester Gain-Widerstand |
| TR1 | 1 | Trimmer | 100 kΩ (`104`) | Gain-Einstellung; getesteter Aufbau ca. 14,3 kΩ effektiv |
| POT1 | 1 | logarithmischer Poti | 10 kΩ | Sidetone-Lautstärke |
| R15 | 1 | Widerstand | 100 kΩ | SIDETONE OUT gegen GND |
| R16, R17 | 2 | Serienwiderstand | 100 Ω | USB-Soundkarte L/R zur Kopfhörerbuchse |
| R18, R19 | 2 | Mischwiderstand | 220 Ω | SIDETONE OUT getrennt nach links/rechts |
| C10 | 1 | Elko | 470 µF / mindestens 25 V | V2-Versorgungsfilter |
| C11 | 1 | Keramikkondensator | 100 nF | V2-Versorgungsfilter |
| C12 | 1 | Keramikkondensator | 100 nF | direkt zwischen OPA Pin 8 und Pin 4 |
| C13 | 1 | Elko | 100 µF | Stützung des 6-V-Hilfspunkts |
| C14 | 1 | Folienkondensator | 1,5 µF | MIC-IN-Koppelkondensator, unpolarisiert |
| C15 | 1 | Elko | 100 µF | Ausgangskopplung, Plus Richtung OPA Pin 7 |
| PCB2 | 1 | Lochrasterplatine | ca. 60 × 30 mm | im getesteten Prototyp |
| MISC | 1 | Litze / Isolierung / Befestigung | nach Aufbau | kurze, saubere Leitungsführung empfohlen |

## Wichtiger Hinweis zur Audio-Mischung

Es werden **zwei getrennte 220-Ω-Widerstände** vom SIDETONE OUT zu J2 Tip und J2 Ring verwendet.

Kein einzelner Widerstand darf Tip und Ring direkt verbinden.
