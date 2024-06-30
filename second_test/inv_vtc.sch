v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 0 -10 0 20 {
lab=Vout}
N -40 -40 -40 50 {
lab=Vin}
N -70 0 -40 0 {
lab=Vin}
N -0 -0 50 0 {
lab=Vout}
N 0 -100 -0 -70 {
lab=Vdd}
N -0 80 -0 100 {
lab=gnd}
N -0 50 40 50 {
lab=gnd}
N 40 50 40 80 {
lab=gnd}
N -0 80 40 80 {
lab=gnd}
N -0 -40 30 -40 {
lab=Vdd}
N 30 -70 30 -40 {
lab=Vdd}
N 0 -70 30 -70 {
lab=Vdd}
C {sky130_fd_pr/pfet_01v8.sym} -20 -40 0 0 {name=M1
W=2
L=0.15
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} -20 50 0 0 {name=M2
W=0.5
L=0.15
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/ipin.sym} -70 0 0 0 {name=p1 lab=Vin
}
C {devices/ipin.sym} 0 -100 1 0 {name=p2 lab=Vdd}
C {devices/ipin.sym} 0 100 3 0 {name=p3 lab=gnd}
C {devices/opin.sym} 50 0 0 0 {name=p4 lab=Vout}
