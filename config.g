
G90                                            ; send absolute coordinates...
M83                                            ; ...but relative extruder moves
M550 P"Printertjuh"                             ; set printer name
M669 K1                                        ; select CoreXY mode
M950 S0 C"exp.heater3" ; Duet 2 WiFi/Ethernet
M575 P2 B9600 S0								; USER EDIT add serial communication
M955 P0 C"spi.cs4+spi.cs3"						; USER EDIT accel meter

; Network
M550 P"Printertjuh" 
M552 S1                                        ; enable network
M587 S"SSID" P"passwordwifi"                      ; Configure access point. You can delete this line once connected
M586 P0 S1                                     ; enable HTTP
M586 P1 S0                                     ; disable FTP
M586 P2 S0                                     ; disable Telnet

; Drives
M569 P0 S1                                     ; physical drive 0 goes forwards
M569 P1 S1                                     ; physical drive 1 goes forwards
M569 P2 S1                                     ; physical drive 2 goes forwards
M569 P3 S1                                    ; physical drive 3 goes forwards
M584 X0 Y1 Z2 E3                               ; set drive mapping
M350 X16 Y16 Z16 I1                            ; configure microstepping with interpolation
M350 E16 I1                                    ; configure microstepping with interpolation
M92 X80.00 Y80.00 Z1600.00 E860.00                ; Set steps per mm
M566 X450.00 Y450.00 Z12.00 E800.00                ; Set maximum instantaneous speed changes (mm/min)
M203 X12000.00 Y12000.00 Z600.00 E8000.00            ; Set maximum speeds (mm/min)
M201 X2000.00 Y2000.00 Z20.00 E500.00             ; Set accelerations (mm/s^2)
M906 X1100.00 Y1100.00 Z1000.00 E800.00 I30           ; Set motor currents (mA) and motor idle factor in per cent
M84 S30                                        ; Set idle timeout

; Axis Limits
M208 X-50 Y-50 Z0 S1                               ; set axis minima
M208 X220 Y220 Z250 S0                         ; set axis maxima
M206 X0 Y42 Z0

; Endstops
M574 X1 S1 P"xstop"                            ; configure switch-type (e.g. microswitch) endstop for low end on X via pin xstop
M574 Y1 S1 P"!ystop"                            ; configure switch-type (e.g. microswitch) endstop for low end on Y via pin ystop
M574 Z1 S1 P"!zstop"                            ; configure switch-type (e.g. microswitch) endstop for low end on Z via pin zstop
;M591 P3  S1  ; filament monitor connected to E0_stop
;M591 D0 P3 C"e0_stop" S1 R70:130 L24.8 E3.0 ; Duet3D rotating magnet sensor for extruder drive 0 is connected to E0 endstop input, enabled, sensitivity 24.8mm.rev, 70% to 130% tolerance, 3mm detection length
;M591 D0 ; display filament sensor parameters for extruder drive 0

; Z-Probe
; Z-Probe
M950 S0 C"exp.heater3"                         ; create servo pin 0 for BLTouch
M558 P9 C"^zprobe.in" H5 F120 T6000            ; set Z probe type to bltouch and the dive height + speeds
G31 P500 X0 Y0 Z3.37                            ; set Z probe trigger value, offset and trigger height lower number means higher offset, higher number is lower offset. 
M557 X15:215 Y15:170 S20                       ; define mesh grid


;M558 P7 H3 F120 T6000                          ; disable Z probe but set dive height, probe speed and travel speed
;M558 P9 C"^zprobe.in" H5 F120 T6000 ; Duet 2 WiFi/Ethernet, DueX2/5
;M557 X15:215 Y15:195 S20                       ; define mesh grid

; Heaters
M308 S0 P"bedtemp" Y"thermistor" T100000 B4138 ; configure sensor 0 as thermistor on pin bedtemp
M950 H0 C"bedheat" T0                          ; create bed heater output on bedheat and map it to sensor 0
M307 H0 B1 S1.00                               ; enable bang-bang mode for the bed heater and set PWM limit
M307 H0 R0.314 C215.9 D2.97 S1.00 V11.8
M140 H0                                        ; map heated bed to heater 0
M143 H0 S80                                    ; set temperature limit for heater 0 to 80C
M308 S1 P"e0temp" Y"thermistor" T100000 B4138  ; configure sensor 1 as thermistor on pin e0temp
M950 J1 C"e1stop"								;USER EDIT, define e1 endstop as pin
M950 H1 C"e1heat" T1                           ; create nozzle heater output on e0heat and map it to sensor 1
M307 H1 B0 S1.00                               ; disable bang-bang mode for heater  and set PWM limit
M307 H1 R2.877 C131.4:130.2 D5.23 S1.00 V11.9			; Autotuning heater done in winter 12-1-22
M143 H1 S280                                   ; set temperature limit for heater 1 to 280C

; Fans
M950 F0 C"fan0" Q500                           ; create fan 0 on pin fan0 and set its frequency
M106 P0 S0 H-1                                 ; set fan 0 value. Thermostatic control is turned off
M950 F1 C"fan1" Q500                           ; create fan 1 on pin fan1 and set its frequency
M106 P1 S1 H-1                                 ; set fan 1 value. Thermostatic control is turned off

; Tools
M563 P0 D0 H1 F0                               ; define tool 0
G10 P0 X0 Y0 Z0                                ; set tool 0 axis offsets
G10 P0 R0 S0                                   ; set initial tool 0 active and standby temperatures to 0C
M581 P1 T0 C0 S0									; USER EDIT, emergency button 
; Custom settings are not defined
M501
