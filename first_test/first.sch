v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 150 -100 150 -70 {
lab=Vcc}
N 150 80 150 120 {
lab=GND}
N 150 50 190 50 {
lab=GND}
N 190 50 190 90 {
lab=GND}
N 150 90 190 90 {
lab=GND}
N 150 -40 190 -40 {
lab=Vcc}
N 190 -90 190 -40 {
lab=Vcc}
N 150 -90 190 -90 {
lab=Vcc}
N 70 -40 110 -40 {
lab=Vin}
N 70 -40 70 50 {
lab=Vin}
N 70 50 100 50 {
lab=Vin}
N 100 50 110 50 {
lab=Vin}
N 150 10 240 10 {
lab=Vout}
N 150 -10 150 20 {
lab=Vout}
N 50 10 70 10 {
lab=Vin}
C {devices/vsource.sym} -310 0 0 0 {name=Vin value= "pulse(0 1.8 1ns 1ns 1ns 5ns 10ns)" savecurrent=false}
C {devices/vsource.sym} -80 0 0 0 {name=Vcc value=1.8v savecurrent=false}
C {sky130_fd_pr/nfet_01v8.sym} 130 50 0 0 {name=M1
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 130 -40 0 0 {name=M2
W=1
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
C {devices/gnd.sym} -80 30 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -310 30 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 150 120 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -310 -30 0 0 {name=p1 sig_type=std_logic lab=Vin
}
C {devices/lab_pin.sym} -80 -30 0 0 {name=p2 sig_type=std_logic lab=Vcc
}
C {devices/lab_pin.sym} 150 -100 0 0 {name=p3 sig_type=std_logic lab=Vcc
}
C {devices/lab_pin.sym} 50 10 2 1 {name=p4 sig_type=std_logic lab=Vin
}
C {devices/lab_pin.sym} 240 10 2 0 {name=p5 sig_type=std_logic lab=Vout
}
C {devices/code_shown.sym} -460 -170 0 0 {.name=s1 only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.tran 0.1n 100n
.save all"}
