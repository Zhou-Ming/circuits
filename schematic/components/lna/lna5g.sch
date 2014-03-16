v 20121203 2
C 40000 40000 0 0 0 title-A2.sym
C 46300 45300 1 0 0 BFR740L3RH.sym
{
T 47200 46000 5 10 0 0 0 0 1
device=BFR740L3RH
T 47200 45800 5 10 1 1 0 0 1
refdes=X1
T 47100 45400 5 10 0 0 0 0 1
footprint=TSLP-3-9
T 46300 45300 5 10 0 1 0 0 1
model-name=BFR740L3RH
T 47200 45400 5 10 0 1 0 0 1
file=simulation/models/infineon/BFR740L3RH_spice_v3.txt
}
C 44500 45600 1 0 0 capacitor-1.sym
{
T 44700 46300 5 10 0 0 0 0 1
device=CAPACITOR
T 44600 45400 5 10 1 1 0 0 1
refdes=C1
T 44700 46500 5 10 0 0 0 0 1
symversion=0.1
T 45000 45400 5 10 1 1 0 0 1
value=7.4p
}
C 44700 47100 1 0 0 capacitor-1.sym
{
T 44900 47800 5 10 0 0 0 0 1
device=CAPACITOR
T 44800 47600 5 10 1 1 0 0 1
refdes=C2
T 44900 48000 5 10 0 0 0 0 1
symversion=0.1
T 45200 47600 5 10 1 1 0 0 1
value=15n
}
C 47200 46400 1 0 0 capacitor-1.sym
{
T 47400 47100 5 10 0 0 0 0 1
device=CAPACITOR
T 47200 46700 5 10 1 1 0 0 1
refdes=C3
T 47400 47300 5 10 0 0 0 0 1
symversion=0.1
T 47200 46400 5 10 1 1 0 0 1
value=0.5p
}
C 48100 49400 1 180 0 capacitor-1.sym
{
T 47900 48700 5 10 0 0 180 0 1
device=CAPACITOR
T 47200 49300 5 10 1 1 0 0 1
refdes=C4
T 47900 48500 5 10 0 0 180 0 1
symversion=0.1
T 47500 49100 5 10 1 1 180 0 1
value=15n
}
C 47000 48100 1 90 0 resistor-1.sym
{
T 46600 48400 5 10 0 0 90 0 1
device=RESISTOR
T 46700 48800 5 10 1 1 180 0 1
refdes=R1
T 46700 48400 5 10 1 1 180 0 1
value=33
}
C 45900 49100 1 0 0 resistor-1.sym
{
T 46200 49500 5 10 0 0 0 0 1
device=RESISTOR
T 46100 49400 5 10 1 1 0 0 1
refdes=R2
T 46400 49400 5 10 1 1 0 0 1
value=56K
}
C 47200 49600 1 0 0 resistor-1.sym
{
T 47500 50000 5 10 0 0 0 0 1
device=RESISTOR
T 47200 49900 5 10 1 1 0 0 1
refdes=R3
T 47700 49900 5 10 1 1 0 0 1
value=8
}
C 45900 46200 1 90 0 inductor-1.sym
{
T 45400 46400 5 10 0 0 90 0 1
device=INDUCTOR
T 45600 46800 5 10 1 1 180 0 1
refdes=L1
T 45200 46400 5 10 0 0 90 0 1
symversion=0.1
T 45100 46400 5 10 1 1 0 0 1
value=8.2n
}
C 47000 46800 1 90 0 inductor-1.sym
{
T 46500 47000 5 10 0 0 90 0 1
device=INDUCTOR
T 46700 47500 5 10 1 1 180 0 1
refdes=L2
T 46300 47000 5 10 0 0 90 0 1
symversion=0.1
T 46400 47000 5 10 1 1 0 0 1
value=2.7n
}
N 46300 45800 45400 45800 4
N 45800 46200 45800 45800 4
C 46800 44600 1 0 0 gnd-1.sym
C 48200 47400 1 0 0 gnd-1.sym
N 46900 46300 46900 46800 4
N 45800 47100 45800 49200 4
N 45800 49200 45900 49200 4
N 45600 47300 45800 47300 4
N 46900 49000 46900 49200 4
N 46900 48100 46900 47700 4
N 47200 46600 46900 46600 4
C 48100 48200 1 180 0 capacitor-1.sym
{
T 47900 47500 5 10 0 0 180 0 1
device=CAPACITOR
T 47200 48100 5 10 1 1 0 0 1
refdes=C5
T 47900 47300 5 10 0 0 180 0 1
symversion=0.1
T 47500 47800 5 10 1 1 180 0 1
value=1.5p
}
N 46800 49200 47200 49200 4
N 47200 49700 46900 49700 4
N 46900 49700 46900 49200 4
N 47200 48000 46900 48000 4
N 48100 49700 49200 49700 4
N 48100 49200 48300 49200 4
N 48100 48000 49200 48000 4
C 44400 46800 1 0 0 gnd-1.sym
N 44500 47100 44500 47300 4
N 44500 47300 44700 47300 4
C 48100 50100 1 0 0 vcc-1.sym
C 51200 45200 1 90 0 resistor-1.sym
{
T 50800 45500 5 10 0 0 90 0 1
device=RESISTOR
T 51600 45900 5 10 1 1 180 0 1
refdes=R4
T 51600 45500 5 10 1 1 180 0 1
value=50
}
C 51000 44600 1 0 0 gnd-1.sym
N 51100 44900 51100 45200 4
N 49400 46600 51100 46600 4
{
T 51300 46650 5 10 1 1 0 6 1
netname=Vout
}
N 51100 46100 51100 46600 4
C 40900 44400 1 0 0 vsin-1.sym
{
T 41600 45050 5 10 1 1 0 0 1
refdes=VINPUT
T 41600 45250 5 10 0 0 0 0 1
device=vsin
T 41600 45450 5 10 0 0 0 0 1
footprint=none
T 41600 44850 5 10 1 1 0 0 1
value=DC 1.2V AC 10MV SIN(0 1MV 1KHZ)
}
C 41100 43900 1 0 0 gnd-1.sym
N 41200 44200 41200 44400 4
N 41200 45800 41200 45600 4
C 48900 48200 1 0 0 vdc-1.sym
{
T 49600 48850 5 10 1 1 0 0 1
refdes=V2
T 49600 49050 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 49600 49250 5 10 0 0 0 0 1
footprint=none
T 49600 48650 5 10 1 1 0 0 1
value=DC 3V
}
N 48300 48000 48300 47700 4
N 49200 48200 49200 48000 4
N 49200 49400 49200 49700 4
C 41400 49000 1 0 0 spice-include-1.sym
{
T 41500 49300 5 10 0 1 0 0 1
device=include
T 41500 49400 5 10 1 1 0 0 1
refdes=A1
T 41900 49100 5 10 1 1 0 0 1
file=./Simulation.cmd
}
N 41200 45800 44500 45800 4
{
T 41600 45850 5 10 1 1 0 6 1
netname=Vin
}
N 48300 50100 48300 49700 4
N 48300 49200 48300 48000 4
N 46900 44900 46900 45300 4
C 48500 46500 1 0 0 inductor-1.sym
{
T 48700 47000 5 10 0 0 0 0 1
device=INDUCTOR
T 48900 46900 5 10 1 1 180 0 1
refdes=L3
T 48700 47200 5 10 0 0 0 0 1
symversion=0.1
T 48700 46400 5 10 1 1 0 0 1
value=1.6n
}
N 48500 46600 48100 46600 4
