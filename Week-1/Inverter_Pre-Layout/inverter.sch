v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 300 -160 300 -130 {
lab=Vout}
N 300 -100 300 -70 {
lab=GND}
N 300 -220 300 -190 {
lab=VDD}
N 230 -190 260 -190 {
lab=Vin}
N 230 -190 230 -100 {
lab=Vin}
N 230 -100 260 -100 {
lab=Vin}
N 300 -140 360 -140 {
lab=Vout}
N 190 -140 230 -140 {
lab=Vin}
C {sky130_fd_pr/nfet_01v8.sym} 280 -100 0 0 {name=M1
L=0.15
W=1
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
C {sky130_fd_pr/pfet_01v8.sym} 280 -190 0 0 {name=M2
L=0.15
W=1
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
C {devices/vsource.sym} 100 -200 0 0 {name=Vdd value=1.8}
C {devices/vsource.sym} 70 -70 0 0 {name=Vin value="pulse(0 1.8 1ns 1ns 1ns 4ns 10ns)"}
C {devices/gnd.sym} 300 -70 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 70 -40 0 0 {name=l2 lab=GND}
C {devices/gnd.sym} 100 -170 0 0 {name=l3 lab=GND}
C {devices/vdd.sym} 300 -220 0 0 {name=l4 lab=VDD}
C {devices/vdd.sym} 100 -230 0 0 {name=l5 lab=VDD}
C {devices/code_shown.sym} 460 -110 0 0 {name=spice only_toplevel=false value=".tran 0.01n 30n
.save all"}
C {devices/lab_pin.sym} 190 -140 0 0 {name=p1 sig_type=std_logic lab=Vin}
C {devices/lab_pin.sym} 360 -140 2 0 {name=p2 sig_type=std_logic lab=Vout}
C {devices/lab_pin.sym} 70 -100 1 0 {name=p3 sig_type=std_logic lab=Vin}
C {devices/code_shown.sym} 40 -300 0 0 {name=library only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
