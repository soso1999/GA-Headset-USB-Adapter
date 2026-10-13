# Funktionsschema — V2 Sidetone

Dieses Dokument beschreibt die tatsächlich verwendete V2-Funktion in textueller Form.

## 1. Versorgung

```text
V1 +12 V
   |
  47 Ω
   |
   +------ V2_SUPPLY ------ OPA2134 Pin 8
   |
  470 µF
   |
  GND

V2_SUPPLY
   |
  100 nF
   |
  GND

OPA2134 Pin 8
   |
  100 nF   <- möglichst nah am IC
   |
OPA2134 Pin 4 / GND
```

OPA2134 Pin 4 liegt an GND.

## 2. 6-V-Hilfspunkt

```text
V2_SUPPLY
   |
  22 kΩ
   |
   +------ 6V_POINT
   |
  22 kΩ
   |
  GND

6V_POINT
   |
 + 100 µF -
   |
  GND
```

Bei ca. 12 V Versorgung liegt `6V_POINT` ungefähr bei der halben Versorgungsspannung.

## 3. Mikrofon-Vorverstärker

```text
PJ-068 Ring
   |
  1,5 µF Folie
   |
   +---------- OPA Pin 3
   |
 100 kΩ
   |
 6V_POINT

OPA Pin 2 -- 10 kΩ -- 6V_POINT

OPA Pin 1 -- 100-kΩ-Trimmer -- OPA Pin 2
```

Der 100-kΩ-Trimmer wird als verstellbarer Widerstand verwendet; Schleifer und ein Außenanschluss werden gemeinsam benutzt.

Im getesteten Prototyp betrug der effektive Trimmerwert ungefähr 14,3 kΩ.

## 4. Sidetone-Lautstärke und Buffer

```text
OPA Pin 1 -------- äußerer Anschluss 10-kΩ-LOG-Poti
6V_POINT --------- anderer äußerer Anschluss
Poti-Mittelkontakt -------- OPA Pin 5

OPA Pin 6 -------- OPA Pin 7
```

Die zweite OPA2134-Hälfte arbeitet als Buffer.

## 5. Ausgangskopplung

```text
OPA Pin 7
   |
 + 100 µF -
   |
   +------ SIDETONE_OUT
   |
 100 kΩ
   |
  GND
```

Plus des 100-µF-Elkos zeigt Richtung OPA Pin 7.

Am `SIDETONE_OUT` soll im Ruhezustand praktisch keine Gleichspannung anliegen.

## 6. Finale getestete Mischung

```text
USB-Soundkarte LEFT  -- 100 Ω --+-- J2 Tip
                                |
SIDETONE_OUT -------- 220 Ω ----+

USB-Soundkarte RIGHT -- 100 Ω --+-- J2 Ring
                                |
SIDETONE_OUT -------- 220 Ω ----+

GND ----------------------------- J2 Sleeve
```

Die beiden 220-Ω-Widerstände sind getrennt.

**Keinen einzelnen Widerstand zwischen J2 Tip und J2 Ring einsetzen.**

## OPA2134PA DIP-8

```text
          Kerbe
        +-------+
OUT A  1 |       | 8  +V
-IN A  2 |       | 7  OUT B
+IN A  3 |       | 6  -IN B
GND    4 |       | 5  +IN B
        +-------+
```
