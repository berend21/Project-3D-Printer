
# Interface Control Document

**Document ID:** SYS-ICD-001
**Revision:** 0.1

## 1. Purpose

Define the physical, electrical and logical
interfaces between major printer subsystems.

## 2. Interface register

| ID | From | To | Interface |
|---|---|---|---|
| IF-001 | Duet 2 WiFi | XY motors | Motor driver outputs |
| IF-002 | Duet 2 WiFi | Z motors | Motor driver outputs |
| IF-003 | Duet 2 WiFi | Extruder motor | Motor driver output |
| IF-004 | Endstops | Duet 2 WiFi | Digital inputs |
| IF-005 | Temperature sensors | Duet 2 WiFi | Sensor inputs |
| IF-006 | Duet 2 WiFi | Heaters | Heater outputs |
| IF-007 | Probe | Duet 2 WiFi | Probe interface |
| IF-008 | Duet 2 WiFi | Fans | Fan outputs |
| IF-009 | Host | Duet 2 WiFi | Communication interface |

## 3. Mechanical interfaces

Document:
- Frame mounting interfaces.
- Linear rail mounting.
- Motor mounting.
- Gantry mounting.
- Build platform mounting.
- Toolhead mounting.

## 4. Electrical interfaces

For each electrical interface document:
- Connector identification.
- Pin assignment.
- Signal type.
- Voltage and current rating.
- Cable specification.
- Reference schematic.

## 5. Logical interfaces

Document:
- G-code communication.
- Homing sequence.
- Probe sequence.
- Heater control.
- Motion commands.
- Fault reporting.

## 6. Interface change management

Any modification affecting an interface
shall trigger a review of all connected
subsystems and relevant test procedures.
