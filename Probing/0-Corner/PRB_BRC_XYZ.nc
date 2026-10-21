(===================================================================)
(PRB_BRC_XYZ - XYZ probing for bottom-right corner)
(Date: 2026-10-20)
(Author: Dawani)
(Open source: Feel free to use, modify, and share this code.)
(===================================================================)

(=========================== INSTRUCTIONS ==========================)
(Gcode for XYZ probing for Bottom Left Corner)
(Move to the beginning of the probing sequence aprox 5mm x 5mm y and 5mm z of corner the bottom-right corner)
(You can mark it down on the stock, it's easier then to place the probe accordingly)
(It dosen't has to be super precise, eyeballing it is enough)
(Before lauching, once in position, set X, Y, and Z pos to 0 in the makera app)
(Make sure you have charged and plugged the probe in the Spindle before launching this program)

(============================= PROGRAM =============================)
G90             (absolute positionning according to the workOrigin)
G21             (Metric mode)
M494.1          (3D probe activation)

G0 X0 Y0 Z10    (Apprauch)
G0 Z0           (Final hestimated point)

(--------------------------- X PROBING -----------------------------)
G91           (Relative mode)
G0 X10        (Move to the left side of the corner to probe)
G0 Z-10

G38.2 X-20 F100 (Probing on X+ direction)w
(/!\ Here the X position would be at 0 on the Bottom-Right corner. You can change this here /!\)
G10 L20 P0 X1 (<= HERE Exemple : X20)

(------------------------ MOVE TO NEXT Y ---------------------------)
G0 X5 Z10        (Going up and a litle bit on X+)
G0 X-15 Y-10     (Going to the Y probing position)
G0 Z-10

G38.2 Y20 F100  (Probing on Y+ direction)
G10 L20 P0 Y-1  (Once reached, the position is saved to the WorkOrigin)

(--------------------------- Z PROBING -----------------------------)
G0 Z10 Y-5      (Going up and a litle bit on Y-)

G90             (Obsolute positionning mode)
G0 X-5 Y5       (Move to the left side of the corner to probe)

G38.2 Z-20 F50  (Probing on Z- direction)
G10 L20 P0 Z0   (Once reached, the position is saved to the WorkOrigin)

G0 X0 Y0 Z10    (Goes to the origin at 10mm on Z)

M30             (End of Programm)
(===================================================================)
