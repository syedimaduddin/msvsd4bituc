v {xschem version=3.1.0 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 620 -750 620 -700 {
lab=#net1}
N 890 -750 890 -700 {
lab=#net2}
N 620 -850 620 -810 {
lab=VDD}
N 620 -850 890 -850 {
lab=VDD}
N 890 -850 890 -810 {
lab=VDD}
N 620 -810 620 -780 {
lab=VDD}
N 890 -810 890 -780 {
lab=VDD}
N 890 -700 890 -670 {
lab=#net2}
N 620 -700 620 -670 {
lab=#net1}
N 620 -590 620 -560 {
lab=#net3}
N 890 -590 890 -560 {
lab=#net3}
N 620 -640 620 -590 {
lab=#net3}
N 890 -640 890 -590 {
lab=#net3}
N 620 -620 890 -620 {
lab=#net3}
N 620 -530 620 -500 {
lab=Y}
N 620 -500 890 -500 {
lab=Y}
N 890 -530 890 -500 {
lab=Y}
N 560 -440 560 -420 {
lab=Y}
N 560 -440 960 -440 {
lab=Y}
N 960 -440 960 -420 {
lab=Y}
N 760 -440 760 -420 {
lab=Y}
N 560 -360 560 -340 {
lab=#net4}
N 560 -340 760 -340 {
lab=#net4}
N 760 -360 760 -340 {
lab=#net4}
N 760 -390 760 -360 {
lab=#net4}
N 560 -390 560 -360 {
lab=#net4}
N 960 -390 960 -360 {
lab=#net5}
N 960 -250 960 -220 {
lab=GND}
N 760 -250 760 -220 {
lab=GND}
N 560 -250 560 -220 {
lab=GND}
N 560 -300 560 -280 {
lab=#net4}
N 560 -300 760 -300 {
lab=#net4}
N 760 -300 760 -280 {
lab=#net4}
N 650 -340 650 -300 {
lab=#net4}
N 960 -360 960 -280 {
lab=#net5}
N 560 -220 560 -190 {
lab=GND}
N 560 -190 960 -190 {
lab=GND}
N 960 -220 960 -190 {
lab=GND}
N 760 -220 760 -190 {
lab=GND}
N 760 -500 760 -440 {
lab=Y}
N 760 -470 1030 -470 {
lab=Y}
N 760 -190 760 -150 {
lab=GND}
N 750 -880 750 -850 {
lab=VDD}
N 180 -850 180 -820 {
lab=VDD}
N 180 -760 180 -730 {
lab=GND}
N 180 -650 180 -620 {
lab=A}
N 180 -450 180 -420 {
lab=B}
N 180 -260 180 -230 {
lab=C}
N 180 -170 180 -150 {
lab=GND}
N 180 -360 180 -340 {
lab=GND}
N 180 -560 180 -540 {
lab=GND}
N 1195 -310 1195 -280 {
lab=F}
N 1195 -495 1195 -465 {
lab=E}
N 1195 -670 1195 -640 {
lab=D}
N 1195 -580 1195 -550 {
lab=GND}
N 1195 -405 1195 -375 {
lab=GND}
N 1195 -220 1195 -190 {
lab=GND}
C {devices/code_shown.sym} 445 -970 0 0 {name=library only_toplevel=false value=".lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt"}
C {sky130_fd_pr/pfet_01v8.sym} 600 -780 0 0 {name=M1
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
C {sky130_fd_pr/pfet_01v8.sym} 870 -780 0 0 {name=M2
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
C {sky130_fd_pr/pfet_01v8.sym} 600 -670 0 0 {name=M3
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
C {sky130_fd_pr/pfet_01v8.sym} 870 -670 0 0 {name=M4
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
C {sky130_fd_pr/pfet_01v8.sym} 600 -560 0 0 {name=M5
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
C {sky130_fd_pr/pfet_01v8.sym} 870 -560 0 0 {name=M6
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
C {sky130_fd_pr/nfet_01v8.sym} 540 -390 0 0 {name=M7
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
C {sky130_fd_pr/nfet_01v8.sym} 740 -390 0 0 {name=M8
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
C {sky130_fd_pr/nfet_01v8.sym} 940 -390 0 0 {name=M9
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
C {sky130_fd_pr/nfet_01v8.sym} 540 -250 0 0 {name=M10
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
C {sky130_fd_pr/nfet_01v8.sym} 740 -250 0 0 {name=M11
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
C {sky130_fd_pr/nfet_01v8.sym} 940 -250 0 0 {name=M12
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
C {devices/vdd.sym} 750 -880 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 760 -150 0 0 {name=l2 lab=GND}
C {devices/lab_pin.sym} 520 -390 0 0 {name=p1 sig_type=std_logic lab="A"}
C {devices/lab_pin.sym} 720 -390 0 0 {name=p2 sig_type=std_logic lab="C"}
C {devices/lab_pin.sym} 920 -390 0 0 {name=p3 sig_type=std_logic lab="E"}
C {devices/lab_pin.sym} 920 -250 0 0 {name=p4 sig_type=std_logic lab="F"}
C {devices/lab_pin.sym} 720 -250 0 0 {name=p5 sig_type=std_logic lab="D"}
C {devices/lab_pin.sym} 520 -250 0 0 {name=p6 sig_type=std_logic lab="B"}
C {devices/lab_pin.sym} 850 -560 0 0 {name=p7 sig_type=std_logic lab="F"}
C {devices/lab_pin.sym} 580 -560 0 0 {name=p8 sig_type=std_logic lab="E"}
C {devices/lab_pin.sym} 580 -670 0 0 {name=p9 sig_type=std_logic lab="C"}
C {devices/lab_pin.sym} 850 -670 0 0 {name=p10 sig_type=std_logic lab="D"}
C {devices/lab_pin.sym} 580 -780 0 0 {name=p11 sig_type=std_logic lab="A"}
C {devices/lab_pin.sym} 850 -780 0 0 {name=p12 sig_type=std_logic lab="B"}
C {devices/lab_pin.sym} 1030 -470 2 0 {name=p13 sig_type=std_logic lab="Y"}
C {devices/vsource.sym} 180 -590 0 0 {name=VA value="pulse(0 1.8 0ns 1ns 1ns 4ns 10ns)"}
C {devices/vsource.sym} 180 -390 0 0 {name=VB value="pulse(0 1.8 0.1ns 1ns 1ns 4ns 10ns)"}
C {devices/vsource.sym} 180 -200 0 0 {name=VC value="pulse(0 1.8 0.2ns 1ns 1ns 4ns 10ns)"}
C {devices/vsource.sym} 1195 -610 0 0 {name=VD value="pulse(0 1.8 0.3ns 1ns 1ns 4ns 10ns)"}
C {devices/vsource.sym} 1195 -435 0 0 {name=VE value="pulse(0 1.8 0.4ns 1ns 1ns 4ns 10ns)"}
C {devices/vsource.sym} 1195 -250 0 0 {name=VF value="pulse(0 1.8 0.5ns 1ns 1ns 4ns 10ns)"}
C {devices/vsource.sym} 180 -790 0 0 {name=Vdd value="1.8"}
C {devices/lab_pin.sym} 180 -650 0 0 {name=p14 sig_type=std_logic lab="A"}
C {devices/lab_pin.sym} 180 -260 0 0 {name=p15 sig_type=std_logic lab="C"}
C {devices/lab_pin.sym} 180 -450 0 0 {name=p16 sig_type=std_logic lab="B"}
C {devices/lab_pin.sym} 1195 -670 0 0 {name=p17 sig_type=std_logic lab="D"}
C {devices/lab_pin.sym} 1195 -495 0 0 {name=p18 sig_type=std_logic lab="E"}
C {devices/lab_pin.sym} 1195 -310 0 0 {name=p19 sig_type=std_logic lab="F"}
C {devices/vdd.sym} 180 -850 0 0 {name=l3 lab=VDD}
C {devices/gnd.sym} 1195 -190 0 0 {name=l4 lab=GND}
C {devices/gnd.sym} 1195 -375 0 0 {name=l5 lab=GND}
C {devices/gnd.sym} 1195 -550 0 0 {name=l6 lab=GND}
C {devices/gnd.sym} 180 -150 0 0 {name=l7 lab=GND}
C {devices/gnd.sym} 180 -340 0 0 {name=l8 lab=GND}
C {devices/gnd.sym} 180 -540 0 0 {name=l9 lab=GND}
C {devices/gnd.sym} 180 -730 0 0 {name=l10 lab=GND}
C {devices/code_shown.sym} 1155 -790 0 0 {name=control only_toplevel=false value="
.tran 0.01n 60n
.save all
"}
