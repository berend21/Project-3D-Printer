
# System Requirements Specification

**Document ID:** SYS-SRS-001
**Revision:** 0.1
**Status:** Initial engineering baseline

## 1. Purpose

Define the functional and non-functional
requirements of the custom CoreXY printer.

## 2. Functional requirements

| ID | Requirement | Verification |
|---|---|---|
| SYS-001 | The machine shall provide CoreXY XY motion. | Functional test |
| SYS-002 | The machine shall provide controlled Z motion. | Functional test |
| SYS-003 | The machine shall provide controlled extrusion. | Functional test |
| SYS-004 | The machine shall support temperature measurement. | Functional test |
| SYS-005 | The machine shall provide controlled heating. | Functional test |
| SYS-006 | The machine shall support configured homing procedures. | Functional test |
| SYS-007 | The machine shall support bed probing if the probe is installed. | Functional test |
| SYS-008 | The machine shall support host communication through its configured interface. | Functional test |

## 3. Mechanical requirements

| ID | Requirement | Verification |
|---|---|---|
| MEC-001 | The structural frame shall support the installed machine components. | Inspection / analysis |
| MEC-002 | The motion system shall maintain defined geometric alignment. | Dimensional inspection |
| MEC-003 | The gantry shall provide the required XY travel. | Measurement |
| MEC-004 | The Z system shall provide the required vertical travel. | Measurement |
| MEC-005 | The machine shall provide a defined usable build volume. | Dimensional measurement |

## 4. Electrical requirements

| ID | Requirement | Verification |
|---|---|---|
| ELE-001 | The control system shall operate using the specified Duet 2 WiFi controller. | Inspection |
| ELE-002 | Electrical interfaces shall match the approved wiring documentation. | Inspection |
| ELE-003 | Temperature sensors shall provide valid readings. | Functional test |
| ELE-004 | Heater circuits shall operate within approved component limits. | Functional test / inspection |
| ELE-005 | Protective electrical measures shall be documented and verified. | Inspection / test |

## 5. Software requirements

| ID | Requirement | Verification |
|---|---|---|
| SW-001 | Firmware shall use the configured CoreXY kinematics. | Configuration inspection / test |
| SW-002 | Homing behavior shall follow the documented sequence. | Functional test |
| SW-003 | Firmware configuration shall be version-controlled. | Repository audit |
| SW-004 | Machine-critical configuration changes shall be traceable. | Audit |

## 6. Non-functional requirements

| ID | Requirement | Verification |
|---|---|---|
| NFR-001 | Engineering drawings shall be revision-controlled. | Document audit |
| NFR-002 | Critical machine settings shall be documented. | Document audit |
| NFR-003 | Calibration results shall be reproducible. | Repeatability test |
| NFR-004 | Design changes shall have documented rationale. | Change review |

## 7. Requirement lifecycle

Proposed:
Requirement has been defined.

Approved:
Requirement has an agreed acceptance criterion.

Implemented:
The corresponding design or functionality exists.

Verified:
The requirement has passed its defined verification.

Failed:
Verification did not meet the acceptance criterion.

Not applicable:
The requirement has been formally excluded
with a documented rationale.
