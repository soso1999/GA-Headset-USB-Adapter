# Aufbau und Inbetriebnahme — V2

Diese Anleitung setzt einen funktionierenden V1-Adapter voraus.

## 1. Zusatzplatine zunächst separat aufbauen

V1 zunächst nicht am Kopfhörerweg verändern.

Die V2-Platine erhält:

- ca. 12 V von V1
- GND von V1
- OPA2134PA
- 6-V-Hilfspunkt
- Mikrofon-Vorverstärker
- 10-kΩ-Log-Poti
- Ausgangskoppelkondensator

## 2. Gleichspannungen prüfen

Vor der Audio-Integration wurden beim funktionierenden Prototyp folgende Größen kontrolliert:

```text
OPA Pin 8         ca. 12 V
OPA Pin 4         0 V
6V_POINT          ca. 6 V
OPA Pin 1         ca. 6 V
OPA Pin 3         ca. 6 V
OPA Pin 7         ca. 6 V
SIDETONE OUT      ca. 0 V DC
```

Einige zehn Millivolt am `SIDETONE OUT` sind beim praktischen Multimetertest unkritisch.

## 3. Gain-Trimmer

Der 100-kΩ-Trimmer liegt zwischen OPA Pin 1 und Pin 2 und wird als verstellbarer Widerstand benutzt.

Beim getesteten Prototyp wurde ein effektiver Wert von etwa **14,3 kΩ** verwendet.

Mit dem festen 10-kΩ-Widerstand ergibt das eine moderate Verstärkung. Dieser Wert muss nicht bei jedem Aufbau identisch sein; bei sauberem Klang und ausreichender Sidetone-Lautstärke sollte nicht unnötig höher verstärkt werden.

## 4. Mikrofonsignal anschließen

```text
PJ-068 Ring -> V2 MIC IN
```

Der 1,5-µF-Folienkondensator auf der V2-Platine entkoppelt die Gleichspannung.

Der vorhandene V1-Mikrofonpfad bleibt bestehen.

## 5. Sidetone zunächst testen

Vor der finalen Mischung kann `SIDETONE OUT` über einen größeren Testwiderstand testweise an einen Kopfhörerkanal gelegt werden.

Wenn die eigene Stimme klar und ohne merkliche Verzögerung hörbar ist, funktioniert der analoge Sidetone-Pfad.

## 6. Finale Audio-Mischung herstellen

Die direkte Verbindung von USB-Soundkarte L/R zur Kopfhörerbuchse wird geändert:

```text
USB LEFT  -> 100 Ω -> J2 Tip
USB RIGHT -> 100 Ω -> J2 Ring
```

Dann Sidetone ergänzen:

```text
SIDETONE OUT -> 220 Ω -> J2 Tip
SIDETONE OUT -> 220 Ω -> J2 Ring
```

Die beiden 220-Ω-Widerstände müssen getrennt sein.

## 7. Funktionstest

Nach dem Umbau prüfen:

- PC-Audio links und rechts getrennt hörbar
- Stereo bleibt erhalten
- Sidetone auf beiden Ohren hörbar
- Sidetone-Lautstärke über 10-kΩ-Log-Poti regelbar
- Mikrofonaufnahme am PC weiterhin einwandfrei
- kein relevanter DC-Pegel an J2 Tip/Ring gegen GND

Beim getesteten Lightspeed Zulu 4 war die Sprachwiedergabe sauber und der Sidetone praktisch ohne wahrnehmbare Verzögerung.
