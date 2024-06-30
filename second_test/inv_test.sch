v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {inv_vtc.sym} 0 0 0 0 {name=x1}
C {devices/vsource.sym} -220 30 0 0 {name=Vin value=0 savecurrent=false}
C {devices/vsource.sym} -140 30 0 0 {name=Vdd value=1.8 savecurrent=false}
C {devices/gnd.sym} 60 50 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} -140 60 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} -220 60 0 0 {name=l3 lab=GND}
C {devices/lab_pin.sym} -20 0 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} -140 0 0 0 {name=p2 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} -220 0 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 60 -50 1 0 {name=p4 sig_type=std_logic lab=Vdd}
C {devices/lab_pin.sym} 160 0 2 0 {name=p5 sig_type=std_logic lab=Vout}
C {devices/code_shown.sym} -200 -160 0 0 {name=VTC only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt 
.dc Vin 0 2 0.1m 
.save all
.end"}
