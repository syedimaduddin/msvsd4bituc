## Function for pre-layout and post-layout simulation
```
Y = [(B + D).(A + C) + E.F]'
```

## Schematic of given function 'Y' using hands
<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/Schematic_by_hand.png"> </p>

## Setup environment for magic and xschem
```
$ mkdir Week2
$ cd Week2
$ mkdir mag2

```

3

Y = [(B + D).(A + C) + E.F]'

4

```

5

​

6

## Schematic of given function 'Y' using hands

7

<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/Schematic_by_hand.png"> </p>

8

​

9

## Setup environment for magic and xschem

10

```

11

$ mkdir Week2

12

$ cd Week2

13

$ mkdir mag
$ mkdir netgen
$ mkdir xschem
$ cd xschem
$ cp /usr/local/share/pdk/sky130A/libs.tech/xschem/xschemrc .
$ cp /usr/local/share/pdk/sky130A/libs.tech/ngspice/spinit .spiceinit
$ cd ../mag
$ cp /usr/local/share/pdk/sky130A/libs.tech/magic/sky130A.magicrc .magicrc
$ cd ../netgen
$ cp /usr/local/share/pdk/sky130A/libs.tech/netgen//sky130A_setup.tcl .
```

## Schematic of given function 'Y' using Xschem tool
Open the Week2 directory and write below commands
```
$ cd xschem
$ xschem
```
The function implementation using xschem is shown in below figure.
![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/Schematic_by_Xschem.png)

## Pre-layout simulation using Xschem and Ngspice
To view the netlist extracted from xschem Click Here👇
<details><summary>Netlist:</summary>

```
** sch_path: /home/syedimaduddin/Desktop/VSD PD Research Program/Week-2/xschem/function.sch
**.subckt function
XM1 net1 A VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM2 net2 B VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM3 net3 C net1 net1 sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM4 net3 D net2 net2 sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM5 Y E net3 net3 sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM6 Y F net3 net3 sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM7 Y A net4 net4 sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM8 Y C net4 net4 sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM9 Y E net5 net5 sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM10 net4 B GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM11 net4 D GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM12 net5 F GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
VA A GND pulse(0 1.8 0ns 1ns 1ns 4ns 10ns)
.save i(va)
VB B GND pulse(0 1.8 0.1ns 1ns 1ns 4ns 10ns)
.save i(vb)
VC C GND pulse(0 1.8 0.2ns 1ns 1ns 4ns 10ns)
.save i(vc)
VD D GND pulse(0 1.8 0.3ns 1ns 1ns 4ns 10ns)
.save i(vd)
VE E GND pulse(0 1.8 0.4ns 1ns 1ns 4ns 10ns)
.save i(ve)
VF F GND pulse(0 1.8 0.5ns 1ns 1ns 4ns 10ns)
.save i(vf)
Vdd VDD GND 1.8
.save i(vdd)
**** begin user architecture code
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 0.01n 60n
.save all
**** end user architecture code
**.ends
.GLOBAL VDD
.GLOBAL GND
.end
```
</details><br>

The output plots of the above netlist using ngspice are shown below
<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/Prelayout_Simulation_1.png"> </p>
<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/Prelayout_Simulation_2.png"> </p>


## Installation of ALIGN Tool
```
# Home directory
    $cd ~/VSD_4bituc
# Clone the ALIGN source
    $git clone https://github.com/ALIGN-analoglayout/ALIGN-public
    $cd ALIGN-public
# Install virtual environment for python
    $sudo apt -y install python3.8-venv
# Install the latest pip
    $sudo apt-get -y install python3-pip
# Create python virtual envronment
    $python3 -m venv general
    $source general/bin/activate
    $python3 -m pip install pip --upgrade
    $pip install align
    $pip install pandas
    $pip install scipy
    $pip install nltk
    $pip install gensim
    $pip install setuptools wheel pybind11 scikit-build cmake ninja
# Install ALIGN as a user
    $pip install -v .
# Install ALIGN  as a developer
    $pip install -e .
    $pip install -v -e .[test] --no-build-isolation
    $pip install wheel setuptools pip --upgrade
    $pip3 install wheel setuptools pip --upgrade
    $pip install -v --no-build-isolation -e . --no-deps --install-option='-DBUILD_TESTING=ON'
```
## Making ALIGN Portable to Sky130 tehnology
Clone the following Repository inside ALIGN-public directory
```
    $git clone https://github.com/ALIGN-analoglayout/ALIGN-pdk-sky130
```
Move SKY130_PDK folder to ~/VSD_4bituc/ALIGN-public/pdks.
Everytime we start the tool in new terminal, run the following commands.

```
# Running ALIGN TOOL
    $python -m venv general
    $source general/bin/activate
```
Commands to run ALIGN (goto ALIGN-public directory)
```
    $mkdir work
    $cd work
```
General syntax to give inputs
```
schematic2layout.py <NETLIST_DIR> -p <PDK_DIR> -c
EXAMPLE:
schematic2layout.py ../ALIGN-pdk-sky130/examples/five_transistor_ota -p ../pdks/SKY130_PDK/
```

## Post-layout simulation using ALIGN and Ngspice
The netlist of the function should be copied from xschem into the ALIGN-public/ALIGN-pdk-sky130/examples/function folder and renamed from .spice to .sp. Then make some edits to make it processable for ALIGN. In the ALIGN-public directory, run the following command
```
python -m venv general
source general/bin/activate
cd work
schematic2layout.py ../ALIGN-pdk-sky130/examples/function -p ../pdks/SKY130_PDK/ --viewer
```
A link is generated to view the layout. In addition, it generate LEF and GDS files which can be viewed using klayout software as well as magic tool.

<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/align-layout_browser-view.png"> </p>
<p align="center"> <strong>Browser View of layout of the given function</strong> </p>

<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/align-layout_in_klayout_lef.png"> </p>
<p align="center"> <strong>Layout of the function in lef format in Klayout software</strong> </p>

<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/align-layout_in_klayout_gds.png"> </p>
<p align="center"> <strong>Layout of the function in gds format in Klayout software</strong> </p>

<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/align-layout_in_magic.png"> </p>
<p align="center"> <strong>Layout of the given function in magic tool</strong> </p>


To view the netlist extracted from the layout of ALIGN Click Here👇
<details><summary>Netlist:</summary>

```
* SPICE3 file created from FUNCTION_0.ext - technology: sky130A

** sch_path: /home/syedimaduddin/Desktop/VSD PD Research Program/Week-2/xschem/function.sch
**.subckt function
XM1 net1 A VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM2 net2 B VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM3 net3 C net1 net1 sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM4 net3 D net2 net2 sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM5 Y E net3 net3 sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM6 Y F net3 net3 sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM7 Y A net4 net4 sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM8 Y C net4 net4 sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM9 Y E net5 net5 sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM10 net4 B GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM11 net4 D GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM12 net5 F GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
VA A GND pulse(0 1.8 0ns 1ns 1ns 4ns 10ns)
.save i(va)
VB B GND pulse(0 1.8 0.1ns 1ns 1ns 4ns 10ns)
.save i(vb)
VC C GND pulse(0 1.8 0.2ns 1ns 1ns 4ns 10ns)
.save i(vc)
VD D GND pulse(0 1.8 0.3ns 1ns 1ns 4ns 10ns)
.save i(vd)
VE E GND pulse(0 1.8 0.4ns 1ns 1ns 4ns 10ns)
.save i(ve)
VF F GND pulse(0 1.8 0.5ns 1ns 1ns 4ns 10ns)
.save i(vf)
Vdd VDD GND 1.8
.save i(vdd)
**** begin user architecture code
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 0.01n 60n
.save all
**** end user architecture code
**.ends
.GLOBAL VDD
.GLOBAL GND

.subckt NMOS_S_79666698_X5_Y1_1676686594 a_230_462# a_200_252# a_147_462#
X0 a_230_462# a_200_252# a_147_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=1.47e+12p pd=1.33e+07u as=1.7325e+12p ps=1.59e+07u w=1.05e+06u l=150000u
X1 a_230_462# a_200_252# a_147_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
X2 a_147_462# a_200_252# a_230_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
X3 a_147_462# a_200_252# a_230_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
X4 a_230_462# a_200_252# a_147_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
X5 a_230_462# a_200_252# a_147_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
X6 a_147_462# a_200_252# a_230_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
X7 a_230_462# a_200_252# a_147_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
X8 a_147_462# a_200_252# a_230_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
X9 a_147_462# a_200_252# a_230_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
C0 a_200_252# a_230_462# 0.56fF
C1 a_230_462# a_147_462# 3.74fF
C2 a_200_252# a_147_462# 3.07fF
.ends

.subckt PMOS_S_49267959_X5_Y1_1676686590_1676686592 a_230_357# a_200_252# w_0_0# VSUBS
X0 a_230_357# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=2.94e+12p pd=2.38e+07u as=3.465e+12p ps=2.85e+07u w=2.1e+06u l=150000u
X1 w_0_0# a_200_252# a_230_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X2 w_0_0# a_200_252# a_230_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X3 a_230_357# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X4 a_230_357# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X5 w_0_0# a_200_252# a_230_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X6 w_0_0# a_200_252# a_230_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X7 a_230_357# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X8 a_230_357# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X9 w_0_0# a_200_252# a_230_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
C0 w_0_0# a_200_252# 2.20fF
C1 a_230_357# a_200_252# 0.44fF
C2 a_230_357# w_0_0# 3.98fF
C3 a_230_357# VSUBS -0.16fF
C4 a_200_252# VSUBS 0.16fF
C5 w_0_0# VSUBS 5.49fF
.ends

.subckt NMOS_S_79666698_X5_Y1_1676686589_1676686592 a_230_462# a_200_252# a_147_462#
X0 a_230_462# a_200_252# a_147_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=1.47e+12p pd=1.33e+07u as=1.7325e+12p ps=1.59e+07u w=1.05e+06u l=150000u
X1 a_230_462# a_200_252# a_147_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
X2 a_147_462# a_200_252# a_230_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
X3 a_147_462# a_200_252# a_230_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
X4 a_230_462# a_200_252# a_147_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
X5 a_230_462# a_200_252# a_147_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
X6 a_147_462# a_200_252# a_230_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
X7 a_230_462# a_200_252# a_147_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
X8 a_147_462# a_200_252# a_230_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
X9 a_147_462# a_200_252# a_230_462# a_147_462# sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=1.05e+06u l=150000u
C0 a_200_252# a_230_462# 0.56fF
C1 a_230_462# a_147_462# 3.74fF
C2 a_200_252# a_147_462# 3.07fF
.ends

.subckt INV_61857474_0_0_1676686592 m1_570_1400# PMOS_S_49267959_X5_Y1_1676686590_1676686592_0/w_0_0#
+ m1_656_560# VSUBS
XPMOS_S_49267959_X5_Y1_1676686590_1676686592_0 m1_570_1400# m1_656_560# PMOS_S_49267959_X5_Y1_1676686590_1676686592_0/w_0_0#
+ VSUBS PMOS_S_49267959_X5_Y1_1676686590_1676686592
XNMOS_S_79666698_X5_Y1_1676686589_1676686592_0 m1_570_1400# m1_656_560# VSUBS NMOS_S_79666698_X5_Y1_1676686589_1676686592
C0 m1_570_1400# m1_656_560# 0.31fF
C1 PMOS_S_49267959_X5_Y1_1676686590_1676686592_0/w_0_0# m1_656_560# 0.41fF
C2 PMOS_S_49267959_X5_Y1_1676686590_1676686592_0/w_0_0# m1_570_1400# 0.05fF
C3 m1_570_1400# VSUBS 3.26fF
C4 m1_656_560# VSUBS 3.70fF
C5 PMOS_S_49267959_X5_Y1_1676686590_1676686592_0/w_0_0# VSUBS 5.63fF
.ends

.subckt DP_PMOS_34936022_X5_Y1_1676686593 a_372_252# a_230_357# a_200_252# a_402_357#
+ w_0_0# VSUBS
X0 a_230_357# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=2.94e+12p pd=2.38e+07u as=6.405e+12p ps=5.23e+07u w=2.1e+06u l=150000u
X1 w_0_0# a_200_252# a_230_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X2 a_402_357# a_372_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=2.94e+12p pd=2.38e+07u as=0p ps=0u w=2.1e+06u l=150000u
X3 w_0_0# a_200_252# a_230_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X4 a_402_357# a_372_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X5 a_402_357# a_372_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X6 w_0_0# a_372_252# a_402_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X7 w_0_0# a_372_252# a_402_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X8 a_402_357# a_372_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X9 a_402_357# a_372_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X10 w_0_0# a_372_252# a_402_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X11 a_230_357# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X12 w_0_0# a_372_252# a_402_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X13 w_0_0# a_372_252# a_402_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X14 a_230_357# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X15 a_230_357# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X16 w_0_0# a_200_252# a_230_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X17 a_230_357# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X18 w_0_0# a_200_252# a_230_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X19 w_0_0# a_200_252# a_230_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
C0 a_230_357# a_200_252# 0.45fF
C1 a_372_252# w_0_0# 2.29fF
C2 a_200_252# w_0_0# 2.35fF
C3 a_372_252# a_402_357# 0.43fF
C4 a_200_252# a_402_357# 0.05fF
C5 a_372_252# a_200_252# 2.09fF
C6 a_230_357# w_0_0# 3.48fF
C7 a_230_357# a_402_357# 0.88fF
C8 a_372_252# a_230_357# 0.02fF
C9 w_0_0# a_402_357# 4.75fF
C10 a_402_357# VSUBS -0.30fF
C11 a_230_357# VSUBS -0.24fF
C12 a_372_252# VSUBS 0.06fF
C13 a_200_252# VSUBS -0.14fF
C14 w_0_0# VSUBS 8.10fF
.ends

.subckt PMOS_S_49267959_X5_Y1_1676686595 a_230_357# a_200_252# w_0_0# VSUBS
X0 a_230_357# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=2.94e+12p pd=2.38e+07u as=3.465e+12p ps=2.85e+07u w=2.1e+06u l=150000u
X1 w_0_0# a_200_252# a_230_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X2 w_0_0# a_200_252# a_230_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X3 a_230_357# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X4 a_230_357# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X5 w_0_0# a_200_252# a_230_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X6 w_0_0# a_200_252# a_230_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X7 a_230_357# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X8 a_230_357# a_200_252# w_0_0# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
X9 w_0_0# a_200_252# a_230_357# w_0_0# sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=2.1e+06u l=150000u
C0 a_230_357# w_0_0# 3.98fF
C1 a_200_252# w_0_0# 2.20fF
C2 a_230_357# a_200_252# 0.44fF
C3 a_230_357# VSUBS -0.16fF
C4 a_200_252# VSUBS 0.16fF
C5 w_0_0# VSUBS 5.49fF
.ends

.subckt FUNCTION_0 Y A B C D E F VDD GND
XNMOS_S_79666698_X5_Y1_1676686594_0 Y C GND NMOS_S_79666698_X5_Y1_1676686594
XNMOS_S_79666698_X5_Y1_1676686594_1 Y A GND NMOS_S_79666698_X5_Y1_1676686594
XNMOS_S_79666698_X5_Y1_1676686594_2 GND m1_946_2408# GND NMOS_S_79666698_X5_Y1_1676686594
XNMOS_S_79666698_X5_Y1_1676686594_3 GND D GND NMOS_S_79666698_X5_Y1_1676686594
XNMOS_S_79666698_X5_Y1_1676686594_4 GND m1_2720_560# GND NMOS_S_79666698_X5_Y1_1676686594
XINV_61857474_0_0_1676686592_0 Y w_3328_1530# E GND INV_61857474_0_0_1676686592
XDP_PMOS_34936022_X5_Y1_1676686593_0 m1_2720_560# w_3328_1530# A w_3328_1530# VDD
+ GND DP_PMOS_34936022_X5_Y1_1676686593
XPMOS_S_49267959_X5_Y1_1676686595_0 Y m1_946_2408# w_3328_1530# GND PMOS_S_49267959_X5_Y1_1676686595
XPMOS_S_49267959_X5_Y1_1676686595_1 w_3328_1530# D w_3328_1530# GND PMOS_S_49267959_X5_Y1_1676686595
XPMOS_S_49267959_X5_Y1_1676686595_2 w_3328_1530# C w_3328_1530# GND PMOS_S_49267959_X5_Y1_1676686595
C0 m1_946_2408# C 0.29fF
C1 A C 0.33fF
C2 VDD C 0.02fF
C3 E m1_946_2408# 0.01fF
C4 A m1_946_2408# 0.15fF
C5 VDD m1_946_2408# 0.03fF
C6 D Y 0.06fF
C7 VDD A 0.35fF
C8 D w_3328_1530# 1.11fF
C9 D B 0.04fF
C10 Y w_3328_1530# 3.02fF
C11 B Y 0.05fF
C12 B w_3328_1530# 0.76fF
C13 D m1_2720_560# 0.18fF
C14 m1_2720_560# Y 0.12fF
C15 m1_2720_560# w_3328_1530# 0.90fF
C16 D C 0.07fF
C17 Y C 0.16fF
C18 w_3328_1530# C 1.33fF
C19 B C 0.01fF
C20 D E 0.03fF
C21 Y E 0.02fF
C22 D m1_946_2408# 0.27fF
C23 m1_2720_560# C 0.01fF
C24 E w_3328_1530# 0.08fF
C25 Y m1_946_2408# 0.34fF
C26 B E 0.03fF
C27 D A 0.01fF
C28 D VDD 0.02fF
C29 Y A 0.34fF
C30 m1_946_2408# w_3328_1530# 0.83fF
C31 B m1_946_2408# 0.00fF
C32 A w_3328_1530# 1.49fF
C33 VDD w_3328_1530# 0.16fF
C34 B A 0.04fF
C35 m1_2720_560# m1_946_2408# 0.15fF
C36 m1_2720_560# A 0.33fF
C37 VDD m1_2720_560# 0.35fF
C38 B GND 0.32fF **FLOATING
C39 Y GND 9.54fF
C40 w_3328_1530# GND 21.22fF
C41 A GND 2.79fF
C42 C GND 2.94fF
C43 D GND 3.46fF
C44 m1_946_2408# GND 4.40fF
C45 VDD GND 8.48fF
C46 E GND 3.22fF
C47 m1_2720_560# GND 3.97fF
.ends
```
</details><br>

The output plots of the above netlist using ngspice are shown below
<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/Postlayout_Simulation_using_Align_1.png"> </p>
<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/Postlayout_Simulation_using_Align_2.png"> </p>

## Post-layout simulation using Magic and Ngspice
To create the layout of the given function in magic tool firstly I have selected the euler's path as <strong>BDFECA</strong>. Stick Diagram for the layout of the function is shown below
<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/Stick_diagram_of_function.png"> </p>

Now, the netlist of the function imported into the magic tool to generate the pfets and nfets. Then the connections were made in magic tool.
<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/function_layout_in_magic.png"> </p>

After that the netlist will generated using the following commands

```
extract do local
extract all
ext2spice hierarchy on
ext2spice scale off
ext2spice cthresh 0 rthresh 0
ext2spice 
```
To view the netlist extracted from the function layout in magic Click Here👇
<details><summary>Netlist:</summary>

```
* SPICE3 file created from prelayout_function.ext - technology: sky130A

** sch_path: /home/syedimaduddin/Desktop/VSD PD Research Program/Week-2/xschem/function.sch
**.subckt function
XM1 net1 A VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM2 net2 B VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM3 net3 C net1 net1 sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM4 net3 D net2 net2 sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM5 Y E net3 net3 sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM6 Y F net3 net3 sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM7 Y A net4 net4 sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM8 Y C net4 net4 sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM9 Y E net5 net5 sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM10 net4 B GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM11 net4 D GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM12 net5 F GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
VA A GND pulse(0 1.8 0ns 1ns 1ns 4ns 10ns)
.save i(va)
VB B GND pulse(0 1.8 0.1ns 1ns 1ns 4ns 10ns)
.save i(vb)
VC C GND pulse(0 1.8 0.2ns 1ns 1ns 4ns 10ns)
.save i(vc)
VD D GND pulse(0 1.8 0.3ns 1ns 1ns 4ns 10ns)
.save i(vd)
VE E GND pulse(0 1.8 0.4ns 1ns 1ns 4ns 10ns)
.save i(ve)
VF F GND pulse(0 1.8 0.5ns 1ns 1ns 4ns 10ns)
.save i(vf)
Vdd VDD GND 1.8
.save i(vdd)
**** begin user architecture code
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.tran 0.01n 60n
.save all
**** end user architecture code
**.ends
.GLOBAL VDD
.GLOBAL GND

.subckt sky130_fd_pr__nfet_01v8_648S5X a_n73_n100# a_n33_n188# a_15_n100# a_n175_n274#
X0 a_15_n100# a_n33_n188# a_n73_n100# a_n175_n274# sky130_fd_pr__nfet_01v8 ad=2.9e+11p pd=2.58e+06u as=2.9e+11p ps=2.58e+06u w=1e+06u l=150000u
C0 a_n33_n188# a_15_n100# 0.03fF
C1 a_n33_n188# a_n73_n100# 0.03fF
C2 a_15_n100# a_n73_n100# 0.16fF
C3 a_15_n100# a_n175_n274# 0.08fF
C4 a_n73_n100# a_n175_n274# 0.11fF
C5 a_n33_n188# a_n175_n274# 0.30fF
.ends

.subckt sky130_fd_pr__pfet_01v8_XGS3BL a_n73_n100# a_15_n100# w_n211_n319# a_n33_n197#
+ VSUBS
X0 a_15_n100# a_n33_n197# a_n73_n100# w_n211_n319# sky130_fd_pr__pfet_01v8 ad=2.9e+11p pd=2.58e+06u as=2.9e+11p ps=2.58e+06u w=1e+06u l=150000u
C0 a_15_n100# w_n211_n319# 0.06fF
C1 w_n211_n319# a_n73_n100# 0.09fF
C2 w_n211_n319# a_n33_n197# 0.26fF
C3 a_15_n100# a_n73_n100# 0.16fF
C4 a_15_n100# a_n33_n197# 0.03fF
C5 a_n73_n100# a_n33_n197# 0.03fF
C6 a_15_n100# VSUBS 0.02fF
C7 a_n73_n100# VSUBS 0.02fF
C8 a_n33_n197# VSUBS 0.05fF
C9 w_n211_n319# VSUBS 1.07fF
.ends

.subckt prelayout_function B D F E C A Y VDD GND
XXM12 XM12/a_n73_n100# F XM12/a_15_n100# VSUBS sky130_fd_pr__nfet_01v8_648S5X
XXM1 XM1/a_n73_n100# XM1/a_15_n100# w_1870_676# A VSUBS sky130_fd_pr__pfet_01v8_XGS3BL
XXM2 XM2/a_n73_n100# XM2/a_15_n100# w_n1748_622# B VSUBS sky130_fd_pr__pfet_01v8_XGS3BL
XXM3 XM3/a_n73_n100# XM3/a_15_n100# w_1134_674# C VSUBS sky130_fd_pr__pfet_01v8_XGS3BL
XXM4 XM4/a_n73_n100# XM4/a_15_n100# w_n1032_674# D VSUBS sky130_fd_pr__pfet_01v8_XGS3BL
XXM5 XM5/a_n73_n100# XM5/a_15_n100# w_442_674# E VSUBS sky130_fd_pr__pfet_01v8_XGS3BL
XXM6 XM6/a_n73_n100# XM6/a_15_n100# w_n300_674# F VSUBS sky130_fd_pr__pfet_01v8_XGS3BL
XXM7 XM7/a_n73_n100# A XM7/a_15_n100# VSUBS sky130_fd_pr__nfet_01v8_648S5X
XXM8 XM8/a_n73_n100# C XM8/a_15_n100# VSUBS sky130_fd_pr__nfet_01v8_648S5X
XXM9 XM9/a_n73_n100# E XM9/a_15_n100# VSUBS sky130_fd_pr__nfet_01v8_648S5X
XXM10 XM10/a_n73_n100# m1_n1720_n458# XM10/a_15_n100# VSUBS sky130_fd_pr__nfet_01v8_648S5X
XXM11 XM11/a_n73_n100# m1_n1032_n452# XM11/a_15_n100# VSUBS sky130_fd_pr__nfet_01v8_648S5X
C0 m2_n1748_n204# GND 0.01fF
C1 XM2/a_n73_n100# m2_n972_516# 0.00fF
C2 XM4/a_n73_n100# m2_n1660_514# 0.03fF
C3 A XM5/a_15_n100# 0.00fF
C4 w_n1748_622# XM10/a_15_n100# 0.00fF
C5 A XM1/a_15_n100# 0.01fF
C6 F D 0.02fF
C7 m2_n240_n294# m2_n1660_n296# 0.00fF
C8 F VDD 0.00fF
C9 m2_n1748_n204# XM12/a_15_n100# 0.00fF
C10 m1_n1032_n452# XM4/a_15_n100# 0.00fF
C11 m2_n1748_n204# XM4/a_15_n100# 0.00fF
C12 A XM5/a_n73_n100# 0.00fF
C13 A C 0.05fF
C14 w_442_674# VDD 0.00fF
C15 XM6/a_15_n100# Y 0.03fF
C16 w_n1032_674# XM2/a_15_n100# 0.00fF
C17 w_1134_674# XM5/a_15_n100# 0.00fF
C18 XM7/a_15_n100# m2_1194_n290# 0.00fF
C19 w_1870_676# m2_n972_516# 0.00fF
C20 m2_1194_n290# XM7/a_n73_n100# 0.03fF
C21 A XM3/a_n73_n100# 0.00fF
C22 A E 0.00fF
C23 XM11/a_15_n100# D 0.00fF
C24 m2_n240_n294# XM6/a_15_n100# 0.00fF
C25 XM9/a_n73_n100# Y 0.00fF
C26 w_n1748_622# m2_n1660_514# 0.03fF
C27 w_1134_674# C 0.10fF
C28 Y XM4/a_n73_n100# 0.00fF
C29 B F 0.00fF
C30 XM5/a_15_n100# XM1/a_n73_n100# 0.00fF
C31 m2_n240_n294# XM9/a_n73_n100# 0.03fF
C32 GND XM10/a_15_n100# 0.00fF
C33 w_1134_674# XM3/a_n73_n100# -0.00fF
C34 XM8/a_15_n100# XM3/a_15_n100# 0.00fF
C35 w_1134_674# E 0.01fF
C36 m2_n1660_n296# XM9/a_n73_n100# 0.00fF
C37 F m1_n1032_n452# 0.02fF
C38 m2_n1748_n204# F 0.00fF
C39 XM12/a_15_n100# XM10/a_15_n100# 0.00fF
C40 m2_n972_516# D 0.00fF
C41 m2_n972_516# VDD 0.98fF
C42 XM5/a_n73_n100# XM1/a_n73_n100# 0.00fF
C43 C XM1/a_n73_n100# 0.00fF
C44 XM9/a_15_n100# Y 0.03fF
C45 w_n300_674# D 0.01fF
C46 w_n300_674# VDD 0.00fF
C47 XM3/a_n73_n100# XM1/a_n73_n100# 0.00fF
C48 E XM1/a_n73_n100# 0.00fF
C49 w_n1032_674# m2_n1660_514# 0.03fF
C50 m2_n240_n294# XM9/a_15_n100# 0.00fF
C51 XM11/a_15_n100# m1_n1032_n452# 0.00fF
C52 m2_n1660_n296# m1_n1720_n458# 0.00fF
C53 w_n1748_622# Y 0.00fF
C54 m2_n1748_n204# XM11/a_15_n100# 0.03fF
C55 XM8/a_15_n100# A 0.00fF
C56 m2_n1660_n296# XM9/a_15_n100# 0.00fF
C57 m2_1194_516# XM5/a_15_n100# 0.00fF
C58 XM7/a_15_n100# w_1870_676# 0.00fF
C59 w_1870_676# XM7/a_n73_n100# 0.00fF
C60 m2_1194_516# XM1/a_15_n100# 0.00fF
C61 XM2/a_n73_n100# VDD 0.02fF
C62 Y XM5/a_15_n100# 0.00fF
C63 m2_1194_n290# XM8/a_n73_n100# 0.00fF
C64 m1_n1032_n452# XM12/a_n73_n100# 0.00fF
C65 Y XM1/a_15_n100# 0.01fF
C66 XM11/a_n73_n100# D 0.00fF
C67 m2_n1748_n204# XM12/a_n73_n100# 0.03fF
C68 XM4/a_15_n100# m2_n1660_514# 0.00fF
C69 m2_1194_516# XM5/a_n73_n100# 0.00fF
C70 B m2_n972_516# 0.00fF
C71 m2_1194_516# C 0.00fF
C72 XM6/a_n73_n100# w_n1032_674# 0.00fF
C73 F XM10/a_15_n100# 0.00fF
C74 w_442_674# A 0.00fF
C75 w_1134_674# XM8/a_15_n100# 0.00fF
C76 B w_n300_674# 0.00fF
C77 Y XM5/a_n73_n100# 0.03fF
C78 m2_1194_516# XM3/a_n73_n100# 0.00fF
C79 Y C 0.11fF
C80 m2_1194_516# E 0.00fF
C81 m2_n1748_n204# m2_n972_516# 0.06fF
C82 m2_n972_516# XM3/a_15_n100# 0.00fF
C83 w_1870_676# VDD 0.10fF
C84 w_n1032_674# Y 0.00fF
C85 Y XM3/a_n73_n100# 0.00fF
C86 m2_n1748_n204# w_n300_674# 0.00fF
C87 Y E 0.11fF
C88 m2_n240_n294# C 0.00fF
C89 XM6/a_n73_n100# XM4/a_15_n100# 0.01fF
C90 w_1134_674# w_442_674# 0.04fF
C91 B XM2/a_n73_n100# 0.00fF
C92 XM11/a_15_n100# XM10/a_15_n100# 0.00fF
C93 m2_n240_n294# E 0.00fF
C94 XM2/a_n73_n100# XM10/a_n73_n100# 0.00fF
C95 m2_n1660_n296# E 0.00fF
C96 Y XM12/a_15_n100# 0.00fF
C97 Y XM4/a_15_n100# 0.00fF
C98 XM11/a_n73_n100# XM10/a_n73_n100# 0.00fF
C99 F m2_n1660_514# 0.00fF
C100 XM2/a_n73_n100# m2_n1748_n204# 0.00fF
C101 XM2/a_15_n100# m2_n972_516# 0.00fF
C102 m2_1194_n290# A 0.00fF
C103 m2_n1660_n296# GND 0.04fF
C104 XM12/a_n73_n100# XM10/a_15_n100# 0.00fF
C105 XM11/a_n73_n100# m1_n1032_n452# 0.00fF
C106 m2_n972_516# A 0.00fF
C107 XM11/a_n73_n100# m2_n1748_n204# 0.01fF
C108 m2_n240_n294# XM12/a_15_n100# 0.04fF
C109 D VDD 0.01fF
C110 w_n1748_622# XM4/a_n73_n100# 0.00fF
C111 w_442_674# XM1/a_n73_n100# 0.00fF
C112 XM6/a_15_n100# XM5/a_n73_n100# 0.01fF
C113 m2_n1660_n296# XM12/a_15_n100# 0.00fF
C114 XM6/a_15_n100# E 0.00fF
C115 XM9/a_n73_n100# XM5/a_n73_n100# 0.00fF
C116 XM6/a_n73_n100# F 0.00fF
C117 w_n1748_622# m1_n1720_n458# 0.00fF
C118 w_1134_674# m2_n972_516# 0.05fF
C119 w_1870_676# XM3/a_15_n100# 0.01fF
C120 XM8/a_15_n100# Y 0.00fF
C121 XM9/a_n73_n100# E 0.00fF
C122 XM6/a_15_n100# XM12/a_15_n100# 0.00fF
C123 XM9/a_15_n100# XM5/a_15_n100# 0.00fF
C124 F Y 0.01fF
C125 w_n1032_674# XM4/a_n73_n100# -0.00fF
C126 m2_n240_n294# XM8/a_15_n100# 0.00fF
C127 m2_1194_516# w_442_674# 0.00fF
C128 B D 0.02fF
C129 B VDD 0.03fF
C130 m2_n972_516# XM1/a_n73_n100# 0.00fF
C131 m2_n972_516# m2_n1660_514# 0.02fF
C132 w_442_674# Y 0.09fF
C133 XM11/a_n73_n100# XM10/a_15_n100# 0.01fF
C134 m2_n240_n294# F 0.00fF
C135 XM9/a_n73_n100# XM12/a_15_n100# 0.01fF
C136 D m1_n1032_n452# 0.02fF
C137 XM9/a_15_n100# C 0.00fF
C138 m1_n1032_n452# VDD 0.00fF
C139 m2_n1660_n296# F 0.00fF
C140 m2_n1748_n204# D 0.03fF
C141 w_1870_676# A 0.09fF
C142 w_n300_674# m2_n1660_514# 0.00fF
C143 m2_n1748_n204# VDD 0.01fF
C144 XM3/a_15_n100# VDD 0.00fF
C145 XM7/a_15_n100# A 0.00fF
C146 XM6/a_n73_n100# XM12/a_n73_n100# 0.00fF
C147 A XM7/a_n73_n100# 0.00fF
C148 XM9/a_15_n100# E 0.00fF
C149 GND m1_n1720_n458# 0.02fF
C150 m2_n240_n294# XM11/a_15_n100# 0.00fF
C151 Y XM12/a_n73_n100# 0.00fF
C152 XM6/a_n73_n100# m2_n972_516# 0.03fF
C153 w_n1032_674# w_n1748_622# 0.04fF
C154 XM12/a_15_n100# m1_n1720_n458# 0.00fF
C155 w_1134_674# w_1870_676# 0.04fF
C156 m2_n1660_n296# XM11/a_15_n100# 0.00fF
C157 C XM5/a_15_n100# 0.00fF
C158 XM2/a_n73_n100# m2_n1660_514# 0.00fF
C159 C XM1/a_15_n100# 0.00fF
C160 XM6/a_15_n100# F 0.01fF
C161 m2_1194_516# m2_n972_516# 0.02fF
C162 XM6/a_n73_n100# w_n300_674# -0.00fF
C163 XM2/a_15_n100# D 0.00fF
C164 B XM10/a_n73_n100# 0.00fF
C165 w_n1748_622# GND 0.00fF
C166 XM2/a_15_n100# VDD 0.00fF
C167 m2_1194_n290# Y 0.15fF
C168 XM3/a_n73_n100# XM5/a_15_n100# 0.01fF
C169 m2_n240_n294# XM12/a_n73_n100# 0.00fF
C170 E XM5/a_15_n100# 0.01fF
C171 A VDD 0.02fF
C172 m2_n972_516# Y 0.30fF
C173 m2_n1660_n296# XM12/a_n73_n100# 0.00fF
C174 XM6/a_15_n100# w_442_674# 0.00fF
C175 B m2_n1748_n204# 0.02fF
C176 XM9/a_n73_n100# F 0.00fF
C177 XM10/a_n73_n100# m1_n1032_n452# 0.00fF
C178 w_n300_674# Y 0.05fF
C179 m2_n1748_n204# XM10/a_n73_n100# 0.02fF
C180 w_1870_676# XM1/a_n73_n100# 0.01fF
C181 E XM5/a_n73_n100# 0.00fF
C182 C XM3/a_n73_n100# 0.00fF
C183 m2_n1748_n204# m1_n1032_n452# 0.07fF
C184 XM7/a_n73_n100# XM1/a_n73_n100# 0.00fF
C185 C E 0.05fF
C186 XM9/a_n73_n100# w_442_674# 0.00fF
C187 m2_n240_n294# w_n300_674# 0.00fF
C188 w_1134_674# VDD 0.09fF
C189 w_n1032_674# E 0.00fF
C190 E XM3/a_n73_n100# 0.00fF
C191 F m1_n1720_n458# 0.00fF
C192 B XM2/a_15_n100# 0.01fF
C193 XM12/a_15_n100# E 0.00fF
C194 w_n1032_674# XM4/a_15_n100# -0.00fF
C195 XM1/a_n73_n100# VDD 0.00fF
C196 XM6/a_15_n100# m2_n972_516# 0.01fF
C197 m2_1194_516# w_1870_676# 0.03fF
C198 m2_n1748_n204# XM2/a_15_n100# 0.00fF
C199 D m2_n1660_514# 0.00fF
C200 m2_n1660_514# VDD 0.12fF
C201 w_442_674# XM9/a_15_n100# 0.00fF
C202 XM11/a_n73_n100# m2_n240_n294# 0.00fF
C203 GND XM12/a_15_n100# 0.00fF
C204 B XM10/a_15_n100# 0.00fF
C205 XM6/a_15_n100# w_n300_674# -0.00fF
C206 w_n1748_622# F 0.00fF
C207 XM11/a_n73_n100# m2_n1660_n296# 0.04fF
C208 A XM3/a_15_n100# 0.00fF
C209 w_1870_676# Y 0.14fF
C210 XM11/a_15_n100# m1_n1720_n458# 0.00fF
C211 XM7/a_15_n100# Y 0.02fF
C212 w_1134_674# XM8/a_n73_n100# 0.00fF
C213 Y XM7/a_n73_n100# 0.01fF
C214 m1_n1032_n452# XM10/a_15_n100# 0.00fF
C215 m2_n1748_n204# XM10/a_15_n100# 0.01fF
C216 m2_n972_516# XM4/a_n73_n100# 0.00fF
C217 XM8/a_15_n100# C 0.00fF
C218 XM12/a_n73_n100# m1_n1720_n458# 0.00fF
C219 m2_n240_n294# XM7/a_15_n100# 0.00fF
C220 m2_n240_n294# XM7/a_n73_n100# 0.00fF
C221 XM6/a_n73_n100# D 0.00fF
C222 w_442_674# XM5/a_15_n100# -0.00fF
C223 XM6/a_n73_n100# VDD 0.00fF
C224 F XM5/a_n73_n100# 0.00fF
C225 w_1134_674# XM3/a_15_n100# 0.01fF
C226 F C 0.00fF
C227 m2_1194_516# VDD 0.12fF
C228 B m2_n1660_514# 0.00fF
C229 w_n1032_674# F 0.01fF
C230 w_442_674# XM5/a_n73_n100# -0.00fF
C231 Y D 0.00fF
C232 F E 0.05fF
C233 Y VDD 0.02fF
C234 w_442_674# C 0.01fF
C235 XM2/a_15_n100# XM10/a_15_n100# 0.00fF
C236 GND F 0.00fF
C237 XM3/a_15_n100# XM1/a_n73_n100# 0.01fF
C238 m2_n1748_n204# m2_n1660_514# 0.10fF
C239 w_442_674# XM3/a_n73_n100# 0.00fF
C240 w_442_674# E 0.05fF
C241 XM11/a_n73_n100# XM4/a_n73_n100# 0.00fF
C242 w_n1748_622# m2_n972_516# 0.00fF
C243 F XM12/a_15_n100# 0.00fF
C244 m2_n1660_n296# D 0.00fF
C245 w_1134_674# A 0.01fF
C246 F XM4/a_15_n100# 0.00fF
C247 XM11/a_15_n100# w_n1032_674# 0.00fF
C248 m2_n972_516# XM5/a_15_n100# 0.04fF
C249 XM2/a_n73_n100# m1_n1720_n458# 0.00fF
C250 m2_n972_516# XM1/a_15_n100# 0.00fF
C251 XM11/a_15_n100# GND 0.00fF
C252 XM11/a_n73_n100# m1_n1720_n458# 0.00fF
C253 m2_n1748_n204# XM6/a_n73_n100# 0.00fF
C254 Y XM8/a_n73_n100# 0.03fF
C255 m2_1194_n290# C 0.00fF
C256 XM2/a_15_n100# m2_n1660_514# 0.03fF
C257 A XM1/a_n73_n100# 0.00fF
C258 m2_n972_516# XM5/a_n73_n100# 0.01fF
C259 m2_n972_516# C 0.00fF
C260 XM11/a_15_n100# XM4/a_15_n100# 0.00fF
C261 XM6/a_15_n100# VDD 0.00fF
C262 GND XM12/a_n73_n100# 0.00fF
C263 m2_1194_516# XM3/a_15_n100# 0.03fF
C264 XM2/a_n73_n100# w_n1748_622# -0.00fF
C265 w_n300_674# XM5/a_n73_n100# 0.00fF
C266 w_n300_674# C 0.00fF
C267 m2_n240_n294# XM8/a_n73_n100# 0.00fF
C268 w_n1032_674# m2_n972_516# 0.05fF
C269 m2_n972_516# XM3/a_n73_n100# 0.03fF
C270 m2_n1748_n204# Y 0.01fF
C271 m2_n972_516# E 0.03fF
C272 Y XM3/a_15_n100# 0.00fF
C273 B m2_n1660_n296# 0.00fF
C274 w_n300_674# w_n1032_674# 0.04fF
C275 w_n300_674# E 0.01fF
C276 m2_n1660_n296# XM10/a_n73_n100# 0.00fF
C277 m2_n240_n294# m1_n1032_n452# 0.00fF
C278 w_1134_674# XM1/a_n73_n100# 0.01fF
C279 m2_n240_n294# m2_n1748_n204# 0.02fF
C280 m2_n1660_n296# m1_n1032_n452# 0.00fF
C281 D XM4/a_n73_n100# 0.00fF
C282 XM4/a_n73_n100# VDD 0.00fF
C283 m2_n1748_n204# m2_n1660_n296# 0.14fF
C284 m2_n972_516# XM12/a_15_n100# 0.00fF
C285 m2_n972_516# XM4/a_15_n100# 0.03fF
C286 w_442_674# F 0.01fF
C287 m2_1194_516# A 0.00fF
C288 w_n300_674# XM12/a_15_n100# 0.00fF
C289 w_n300_674# XM4/a_15_n100# 0.00fF
C290 w_1870_676# XM1/a_15_n100# -0.00fF
C291 m1_n1720_n458# VDD 0.00fF
C292 Y A 0.15fF
C293 XM11/a_n73_n100# w_n1032_674# 0.00fF
C294 XM11/a_15_n100# F 0.00fF
C295 XM7/a_15_n100# XM1/a_15_n100# 0.00fF
C296 XM2/a_n73_n100# GND 0.00fF
C297 XM11/a_n73_n100# GND 0.00fF
C298 w_1870_676# C 0.01fF
C299 m2_n240_n294# A 0.00fF
C300 w_1134_674# m2_1194_516# 0.03fF
C301 F XM12/a_n73_n100# 0.00fF
C302 C XM7/a_n73_n100# 0.00fF
C303 XM8/a_15_n100# m2_1194_n290# 0.03fF
C304 w_n1748_622# D 0.01fF
C305 B XM4/a_n73_n100# 0.00fF
C306 w_n1748_622# VDD 0.08fF
C307 w_1870_676# E 0.00fF
C308 w_1134_674# Y 0.08fF
C309 m2_n1748_n204# XM9/a_n73_n100# 0.00fF
C310 m2_n1660_n296# XM10/a_15_n100# 0.03fF
C311 m1_n1032_n452# XM4/a_n73_n100# 0.00fF
C312 XM5/a_15_n100# VDD 0.00fF
C313 F m2_n972_516# 0.02fF
C314 XM1/a_15_n100# VDD 0.02fF
C315 XM6/a_n73_n100# m2_n1660_514# 0.00fF
C316 m2_n1748_n204# XM4/a_n73_n100# 0.00fF
C317 m2_1194_516# XM1/a_n73_n100# 0.03fF
C318 w_n300_674# F 0.05fF
C319 B m1_n1720_n458# 0.02fF
C320 XM11/a_15_n100# XM12/a_n73_n100# 0.01fF
C321 XM9/a_15_n100# XM8/a_n73_n100# 0.01fF
C322 w_442_674# m2_n972_516# 0.16fF
C323 XM10/a_n73_n100# m1_n1720_n458# 0.00fF
C324 XM5/a_n73_n100# VDD 0.00fF
C325 Y XM1/a_n73_n100# 0.00fF
C326 C VDD 0.01fF
C327 Y m2_n1660_514# 0.00fF
C328 m1_n1032_n452# m1_n1720_n458# 0.02fF
C329 w_n300_674# w_442_674# 0.04fF
C330 m2_n1748_n204# m1_n1720_n458# 0.11fF
C331 w_n1032_674# D 0.05fF
C332 w_n1032_674# VDD 0.10fF
C333 m2_n1748_n204# XM9/a_15_n100# 0.00fF
C334 XM3/a_n73_n100# VDD 0.00fF
C335 D E 0.00fF
C336 E VDD 0.00fF
C337 B w_n1748_622# 0.06fF
C338 w_n1748_622# XM10/a_n73_n100# 0.00fF
C339 XM2/a_15_n100# XM4/a_n73_n100# 0.01fF
C340 m2_n972_516# XM12/a_n73_n100# 0.00fF
C341 m2_n1748_n204# w_n1748_622# 0.04fF
C342 XM6/a_n73_n100# Y 0.00fF
C343 w_n300_674# XM12/a_n73_n100# 0.00fF
C344 D XM4/a_15_n100# 0.01fF
C345 XM4/a_15_n100# VDD 0.00fF
C346 XM8/a_15_n100# XM7/a_n73_n100# 0.01fF
C347 m2_1194_516# Y 0.11fF
C348 XM2/a_15_n100# m1_n1720_n458# 0.00fF
C349 C XM8/a_n73_n100# 0.00fF
C350 XM3/a_15_n100# XM1/a_15_n100# 0.00fF
C351 w_n300_674# m2_n972_516# 0.13fF
C352 XM3/a_n73_n100# XM8/a_n73_n100# 0.00fF
C353 B w_n1032_674# 0.01fF
C354 XM6/a_15_n100# m2_n1660_514# 0.00fF
C355 E XM8/a_n73_n100# 0.00fF
C356 w_442_674# w_1870_676# 0.00fF
C357 XM10/a_15_n100# m1_n1720_n458# 0.00fF
C358 C XM3/a_15_n100# 0.01fF
C359 w_n1748_622# XM2/a_15_n100# -0.00fF
C360 B GND 0.00fF
C361 m2_n240_n294# Y 0.08fF
C362 w_n1032_674# m1_n1032_n452# 0.00fF
C363 m2_n1748_n204# w_n1032_674# 0.07fF
C364 GND XM10/a_n73_n100# 0.02fF
C365 m2_n1748_n204# E 0.00fF
C366 GND m1_n1032_n452# 0.00fF
C367 GND VSUBS 0.29fF
C368 Y VSUBS 0.35fF
C369 VDD VSUBS -0.07fF
C370 m2_1194_n290# VSUBS 0.21fF **FLOATING
C371 m2_n240_n294# VSUBS 0.16fF **FLOATING
C372 m2_n1660_n296# VSUBS 0.13fF **FLOATING
C373 m2_n1748_n204# VSUBS 0.21fF **FLOATING
C374 m2_1194_516# VSUBS 0.12fF **FLOATING
C375 m2_n1660_514# VSUBS 0.11fF **FLOATING
C376 m2_n972_516# VSUBS 0.09fF **FLOATING
C377 m1_n1032_n452# VSUBS 0.34fF
C378 m1_n1720_n458# VSUBS 0.37fF
C379 A VSUBS 0.38fF
C380 C VSUBS 0.32fF
C381 E VSUBS 0.37fF
C382 F VSUBS 0.37fF
C383 D VSUBS 0.01fF
C384 B VSUBS 0.04fF
C385 XM11/a_15_n100# VSUBS 0.08fF
C386 XM11/a_n73_n100# VSUBS 0.11fF
C387 XM10/a_15_n100# VSUBS 0.09fF
C388 XM10/a_n73_n100# VSUBS 0.11fF
C389 XM9/a_15_n100# VSUBS 0.08fF
C390 XM9/a_n73_n100# VSUBS 0.11fF
C391 XM8/a_15_n100# VSUBS 0.08fF
C392 XM8/a_n73_n100# VSUBS 0.11fF
C393 XM7/a_15_n100# VSUBS 0.08fF
C394 XM7/a_n73_n100# VSUBS 0.11fF
C395 XM6/a_15_n100# VSUBS 0.02fF
C396 XM6/a_n73_n100# VSUBS 0.02fF
C397 w_n300_674# VSUBS 0.99fF
C398 XM5/a_15_n100# VSUBS 0.02fF
C399 XM5/a_n73_n100# VSUBS 0.02fF
C400 w_442_674# VSUBS 0.99fF
C401 XM4/a_15_n100# VSUBS 0.02fF
C402 XM4/a_n73_n100# VSUBS 0.02fF
C403 w_n1032_674# VSUBS 0.99fF
C404 XM3/a_15_n100# VSUBS 0.02fF
C405 XM3/a_n73_n100# VSUBS 0.02fF
C406 w_1134_674# VSUBS 0.98fF
C407 XM2/a_15_n100# VSUBS 0.02fF
C408 XM2/a_n73_n100# VSUBS 0.02fF
C409 w_n1748_622# VSUBS 1.03fF
C410 XM1/a_15_n100# VSUBS 0.02fF
C411 XM1/a_n73_n100# VSUBS 0.02fF
C412 w_1870_676# VSUBS 1.03fF
C413 XM12/a_15_n100# VSUBS 0.08fF
C414 XM12/a_n73_n100# VSUBS 0.11fF
.ends
```
</details><br>

The output plots of the above netlist using ngspice are shown below
<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/Postlayout_Simulation_using_Magic_1.png"> </p>
<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/Postlayout_Simulation_using_Magic_2.png"> </p>

## Conclusion
It can be concluded that pre-layout simulation and post-layout simulation produce slightly different waveforms. It is because parasitic capacitances and resistances are considered in post-layout simulations rather than in pre-layout simulations where they are ignored. There is also a difference between post-layout simulation using magic and ALIGN. ALIGN has a lower parasitic effect than Magic. The delay observed with Magic is greater than with ALIGN when running post-layout simulations.

## References
* https://github.com/ALIGN-analoglayout/ALIGN-public
* http://opencircuitdesign.com/magic/
