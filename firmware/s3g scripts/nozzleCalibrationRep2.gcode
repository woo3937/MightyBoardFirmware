(*** Start Gcode for the Rep2 ***)
(*** MakerWare's gcode parser is strict. Do not edit ***)
(*** this file unless you know what you're doing! ***)

(*** Code that follows a ";" or "(" is considered a comment, ***)
(*** and will not be evaluated by the Gcode Line Parser. ***)
 
M136 (enable build)
M73 P0 (Set initial build percentage)

(*** These lines set the primary extruder. On a single-extruder bot, this ***)
(*** will always be the right extruder. On a dual-extruder bot it will be  ***)
(*** the extruder you are printing with. Comment out the extruder not being ***)
(*** used as the primary extruder. ***)
M135 T0 (Set the Right extruder as the main Extruder)
;M135 T1 (Set the Left extruder as the main Extruder)


G162 X Y F2000 (home to XY axes maximum)
G161 Z F900 (home to Z axis minimum)
G92 X0 Y0 Z-5 A0 B0 (set Z to -5) 
G1 Z0.0 F900 (set Z to '0')
G161 Z F100 (home to Z axis minimum)
M132 X Y Z A B (Recall stored home offsets for XYZAB axis)

(*** Set the homing position ***)
G92 X152 Y75 Z0 A0 B0 (Replicator Home Position)

G1 X-112 Y-73 Z150 F3300.0 (Waiting Position)
G130 X20 Y20 A20 B20 (Lower stepper Vrefs while heating)



(*** To enable a heated build platform, remove the ";" at the beginning of these lines ***)
M109 T0 S110 (Set the platform temp to 110C)
M134 T0 (Wait for the Platform to Heat Up) 

(*** To heat a tool, make sure the applicable line is not preceded by a ";" ***)
(*** Lines for tools not being used must be preceded by a ";"  ***)
M104 T0 S230 (Set the right extruder temp to 230C)
M104 T1 S230 (Set the left extruder temp to 230C)

(*** These codes are used to wait for a specific tool to heat up.***)
(*** Lines for tools in use should not be preceded by a ";" ***)
(*** Lines for tools not in use should be preceded by a ";" ***)
M133 T0 (Wait for Right Extruder to Heat Up) 
M133 T1 (Wait for Left Extruder to Heat Up) 

G130 X127 Y127 A127 B127 (Set Stepper motor Vref to defaults)
(*** End start gcode ***)

(<layer> 0.175 )
G1 X-70 Y-60.60 Z0.9 F3300.0
G1 F798.0
G1 E0.3
G1 F3300.0
G1 X-70 Y-60.60 Z0.6 F3300 E0.50
G1 E0.80
G1 X-110 Y-60.60 Z0.6 F760 E4.50

G1 X-70 Y-50.50 Z0.6 F3300 E4.00
G1 E4.30
G1 X-100 Y-50.50 Z0.6 F760 E8.00

G1 X-70 Y-40.40 Z0.6 F3300 E7.50
G1 E7.80
G1 X-100 Y-40.40 Z0.6 F760 E11.50

G1 X-70 Y-30.30 Z0.6 F3300 E11.00
G1 E11.30
G1 X-100 Y-30.30 Z0.6 F760 E15.00

G1 X-70 Y-20.20 Z0.6 F3300 E14.50
G1 E14.80
G1 X-100 Y-20.20 Z0.6 F760 E18.50

G1 X-70 Y-10.10 Z0.6 F3300 E18.00
G1 E18.30
G1 X-100 Y-10.10 Z0.6 F760 E22.00

G1 X-70 Y0.00 Z0.6 F3300 E21.50
G1 E21.80
G1 X-100 Y0.00 Z0.6 F760 E25.50

G1 X-70 Y10.10 Z0.6 F3300 E25.00
G1 E25.30
G1 X-100 Y10.10 Z0.6 F760 E29.00

G1 X-70 Y20.20 Z0.6 F3300 E28.50
G1 E28.80
G1 X-100 Y20.20 Z0.6 F760 E32.50

G1 X-70 Y30.30 Z0.6 F3300 E32.00
G1 E32.30
G1 X-100 Y30.30 Z0.6 F760 E36.00

G1 X-70 Y40.40 Z0.6 F3300 E35.50
G1 E35.80
G1 X-100 Y40.40 Z0.6 F760 E39.50

G1 X-70 Y50.50 Z0.6 F3300 E39.00
G1 E39.30
G1 X-100 Y50.50 Z0.6 F760 E43.00

G1 X-70 Y60.60 Z0.6 F3300 E42.50
G1 E42.80
G1 X-100 Y60.60 Z0.6 F760 E46.50

G1 X-30.60 Y-20 Z0.9 F3300.0 E46.00
G1 X-30.60 Y-20 Z0.6 F3300 E46.50
G1 E46.80
G1 X-30.60 Y20 Z0.6 F760 E50.50

G1 X-20.50 Y-20 Z0.6 F3300 E50.00
G1 E50.30
G1 X-20.50 Y10 Z0.6 F760 E54.00

G1 X-10.40 Y-20 Z0.6 F3300 E53.50
G1 E53.80
G1 X-10.40 Y10 Z0.6 F760 E57.50

G1 X-0.30 Y-20 Z0.6 F3300 E57.00
G1 E57.30
G1 X-0.30 Y10 Z0.6 F760 E61.00

G1 X9.80 Y-20 Z0.6 F3300 E60.50
G1 E60.80
G1 X9.80 Y10 Z0.6 F760 E64.50

G1 X19.90 Y-20 Z0.6 F3300 E64.00
G1 E64.30
G1 X19.90 Y10 Z0.6 F760 E68.00

G1 X30.00 Y-20 Z0.6 F3300 E67.50
G1 E67.80
G1 X30.00 Y10 Z0.6 F760 E71.50

G1 X40.10 Y-20 Z0.6 F3300 E71.00
G1 E71.30
G1 X40.10 Y10 Z0.6 F760 E75.00

G1 X50.20 Y-20 Z0.6 F3300 E74.50
G1 E74.80
G1 X50.20 Y10 Z0.6 F760 E78.50

G1 X60.30 Y-20 Z0.6 F3300 E78.00
G1 E78.30
G1 X60.30 Y10 Z0.6 F760 E82.00

G1 X70.40 Y-20 Z0.6 F3300 E81.50
G1 E81.80
G1 X70.40 Y10 Z0.6 F760 E85.50

G1 X80.50 Y-20 Z0.6 F3300 E85.00
G1 E85.30
G1 X80.50 Y10 Z0.6 F760 E89.00

G1 X90.60 Y-20 Z0.6 F3300 E88.50
G1 E88.80
G1 X90.60 Y10 Z0.6 F760 E92.50

G1 F798.0
G1 E92.00
G1 F743.802

G92 E0
M135 T1
M18 A B

G1 X-70 Y-60 Z0.9 F3300.0
G1 F798.0
G1 E0.3
G1 F3300.0
G1 X-70 Y-60 Z0.6 F3300 E0.50
G1 E0.80
G1 X-40 Y-60 Z0.6 F760 E4.50

G1 X-70 Y-50 Z0.6 F3300 E4.00
G1 E4.30
G1 X-40 Y-50 Z0.6 F760 E8.00

G1 X-70 Y-40 Z0.6 F3300 E7.50
G1 E7.80
G1 X-40 Y-40 Z0.6 F760 E11.50

G1 X-70 Y-30 Z0.6 F3300 E11.00
G1 E11.30
G1 X-40 Y-30 Z0.6 F760 E15.00

G1 X-70 Y-20 Z0.6 F3300 E14.50
G1 E14.80
G1 X-40 Y-20 Z0.6 F760 E18.50

G1 X-70 Y-10 Z0.6 F3300 E18.00
G1 E18.30
G1 X-40 Y-10 Z0.6 F760 E22.00

G1 X-70 Y0 Z0.6 F3300 E21.50
G1 E21.80
G1 X-40 Y0 Z0.6 F760 E25.50

G1 X-70 Y10 Z0.6 F3300 E25.00
G1 E25.30
G1 X-40 Y10 Z0.6 F760 E29.00

G1 X-70 Y20 Z0.6 F3300 E28.50
G1 E28.80
G1 X-40 Y20 Z0.6 F760 E32.50

G1 X-70 Y30 Z0.6 F3300 E32.00
G1 E32.30
G1 X-40 Y30 Z0.6 F760 E36.00

G1 X-70 Y40 Z0.6 F3300 E35.50
G1 E35.80
G1 X-40 Y40 Z0.6 F760 E39.50

G1 X-70 Y50 Z0.6 F3300 E39.00
G1 E39.30
G1 X-40 Y50 Z0.6 F760 E43.00

G1 X-70 Y60 Z0.6 F3300 E42.50
G1 E42.80
G1 X-40 Y60 Z0.6 F760 E46.50

G1 X-30 Y-50 Z0.9 F3300.0 E46.00
G1 X-30 Y-50 Z0.6 F3300 E46.50
G1 E46.80
G1 X-30 Y-20 Z0.6 F760 E50.50

G1 X-20 Y-50 Z0.6 F3300 E50.00
G1 E50.30
G1 X-20 Y-20 Z0.6 F760 E54.00

G1 X-10 Y-50 Z0.6 F3300 E53.50
G1 E53.80
G1 X-10 Y-20 Z0.6 F760 E57.50

G1 X0 Y-50 Z0.6 F3300 E57.00
G1 E57.30
G1 X0 Y-20 Z0.6 F760 E61.00

G1 X10 Y-50 Z0.6 F3300 E60.50
G1 E60.80
G1 X10 Y-20 Z0.6 F760 E64.50

G1 X20 Y-50 Z0.6 F3300 E64.00
G1 E64.30
G1 X20 Y-20 Z0.6 F760 E68.00

G1 X30 Y-50 Z0.6 F3300 E67.50
G1 E67.80
G1 X30 Y-20 Z0.6 F760 E71.50

G1 X40 Y-50 Z0.6 F3300 E71.00
G1 E71.30
G1 X40 Y-20 Z0.6 F760 E75.00

G1 X50 Y-50 Z0.6 F3300 E74.50
G1 E74.80
G1 X50 Y-20 Z0.6 F760 E78.50

G1 X60 Y-50 Z0.6 F3300 E78.00
G1 E78.30
G1 X60 Y-20 Z0.6 F760 E82.00

G1 X70 Y-50 Z0.6 F3300 E81.50
G1 E81.80
G1 X70 Y-20 Z0.6 F760 E85.50

G1 X80 Y-50 Z0.6 F3300 E85.00
G1 E85.30
G1 X80 Y-20 Z0.6 F760 E89.00

G1 X90 Y-50 Z0.6 F3300 E88.50
G1 E88.80
G1 X90 Y-20 Z0.6 F760 E92.50

G1 Z155
M18

M104 S0 T0 (set extruder temperature)
M104 S0 T1 (set extruder temperature)
M109 S0 T0 (set HBP temperature)
