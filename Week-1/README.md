Here is the update of Week-1 of VSD Mixed-signal PD Research Program

# Index
- [Installation of Oracle Virtual Box with Ubuntu 20.04](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#1-installation-of-oracle-virtual-box-with-ubuntu-2004)
- [Installation of required tools](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#2-installation-of-tools-and-sky130-pdks)
  * [Magic](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#2i-magic)
  * [Ngspice](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#2ii-ngspice)
  * [Netgen](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#2iii-netgen)
  * [Xschem](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#2iv-xschem)
  * [Open_PDKs](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#2v-open_pdks)
  * [Verifying the open_pdk installation](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#2vi-verifiying-the-open_pdk-installation)
- [Simulation of CMOS Inverter with SKY130 pdk](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#3-simulation-of-inverter-using-xschem-and-ngspice)
  * [Pre-Layout Simulation of Inverter using Xschem and Ngspice](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#3i-simulation-of-inverter-using-xschem-and-ngspice)
  * [Post-Layout Simulation of Inverter using Magic and Ngspice](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#3ii-post-layout-simulation-of-inverter-using-ngspice)
  * [Comparison of Pre-Layout and Post-Layout timing parameters for Inverter](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#4-comparison-of-pre-layout-and-post-layout-timing-parameters-for-inverter)
  
# 1. Installation of Oracle Virtual Box with Ubuntu 20.04

1. Create a new directory **Opensourcetoolinstall** in D: Drive. Make sure there is atleast 150 GB disk space in the drive.
2. Go to [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)
3. Under VirtualBox platform packages, click on **Windows hosts** save the .exe file in **Opensourcetoolinstall** folder.
4. Install the VirtualBox.
5. Download **Ubuntu 20.04 LTS** from [https://ubuntu.com/download/desktop](https://releases.ubuntu.com/20.04.6/) and save the .exe file in **Opensourcetoolinstall** folder.
6. Install Ubuntu 20.04 LTS in the virtualbox.

# 2. Installation of Tools and SKY130 PDKs
## 2.i. Magic
Magic is an open-source VLSI layout tool.
Install magic and its dependencies using the following commands. The dependencies can also be installed using Synaptic Manager. Synaptic manager can be first installed using `sudo apt install synaptic`.\

```
# Update your system
    $sudo apt update
    $sudo apt install -y git
# Install build-essential tools
    $sudo apt install -y build-essential
# Install csh
    $sudo apt install -y csh
# Install x11
    $sudo apt install -y x11-apps
# Install X11
    $sudo apt install -y x11-xserver-utils
# Install OpenGL
    $sudo apt install -y libglu1-mesa-dev freeglut3-dev mesa-common-dev
# Install Tcl/Tk
    $sudo apt install -y tcl-dev tk-dev
# Change to the work directory
    $cd ~/msvd4bituc
# Clone the git repo
    $git clone https://github.com/RTimothyEdwards/magic
# Change into the magic directory
    $cd magic
# Configure magic
    $./configure
# Build magic
    $make
# Install magic
    $sudo make install
```
## 2.ii. Ngspice
Ngspice is the open source spice simulator for electric and electronic circuits. 
Download ngspice-42 tar file `ngspice-42.tar.gz`from [https://ngspice.sourceforge.io/download.html](https://sourceforge.net/projects/ngspice/files/ng-spice-rework/42/) into the work directory. Install ngspice and all its dependicies using the following commands. 
```
# Home directory
    $cd ~/msvd4bituc
    $tar -xzvf ngspice-42.tar.gz
    $cd ngspice-42
    $mkdir release
    $cd release 
# Update the system
    $sudo apt-get update
# Install Xaw library
    $sudo apt-get -y install libxaw7-dev
# Install xterm
    $sudo apt-get -y install xterm
# Install bison
    $sudo apt-get -y install bison
# Install flex
    $sudo apt-get -y install flex
# Install readlines library
    $sudo apt-get -y install libreadline-dev
# Run configuration
    $../configure  --with-x --with-readline=yes --disable-debug
# Build
    $make 
# Install 
    $sudo make install
```
## 2.iii. Netgen
Netgen is a tool for comparing netlists, a process known as LVS, which stands for "Layout vs. Schematic". Install netgen and all its dependicies using the following commands. 

```
# Home directory
    $cd ~/msvd4bituc
# Install GNU m4
    $sudo apt-get install -y m4
# Clone the repository
    $git clone https://github.com/RTimothyEdwards/netgen
    $cd netgen
# Configure the package
    $./configure
# Compile the package
    $make
# Install the package
    $sudo make install
```
## 2.iv. Xschem
Xschem is a schematic capture program, it allows creation of hierarchical representation of circuits with a top down approach. Install xschem and all its dependicies using the following commands. 

```
# Home directory
    $cd ~/msvd4bituc
# Update the system
    $sudo apt-get update 
# Install flex and bison
    $sudo apt-get install -y flex bison
# Install libjpeg-dev 
    $sudo apt-get -y install libjpeg-dev
# Install xcb
    $sudo apt-get -y install xcb
    $sudo apt-get -y install libxcb1
    $sudo apt-get -y install libx11-xcb-dev
# Install cairo
    $sudo apt-get -y install libcairo2 
    $sudo apt-get -y install libcairo2-dev
# Clone the repository
    $git clone https://github.com/StefanSchippers/xschem.git xschem-src
    $cd xschem-src
# Configure the installation
    $./configure
# Compile the source
    $make
# Install the software
    $sudo make install
```

## 2.v. Open_PDKs
Open_PDKs is distributed with files that support the Google/SkyWater sky130 open process description https://github.com/google/skywater-pdk. Open_PDKs will set up an environment for using the SkyWater sky130 process with open-source EDA tools and tool flows such as magic, qflow, openlane, netgen, klayout, etc.More information can be found on [http://opencircuitdesign.com/open_pdks/](http://opencircuitdesign.com/open_pdks/).
Install open_pdks using the following commands.

```
# Home directory
    $cd ~/msvd4bituc
# Install setup-tools
    $sudo apt-get -y install python3-setuptools
# Clone the Open PDK repository
    $git clone https://github.com/RTimothyEdwards/open_pdks
    $cd open_pdks
# Configure Open PDK to use Sky130 libraries
    $./configure --enable-sky130-pdk
# Compile the PDK
    $make 
# Install the PDK
    $sudo make install
```

## 2.vi. Verifiying the open_pdk installation
An initial working directory can be made by copying the required files as follows:
```
$ mkdir Week1
$ cd Week1
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

# 3. Simulation of CMOS Inverter with SKY130 pdk

# 3.i Pre-layout Simulation using Xschem and Ngspice

## 3.i.a. DC Analaysis of CMOS inverter

Create the schematic for inverter in Xschem. 
Take a `code_shown.sym` component from xschem library and write the sky130 library path into it.
```
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
```
DC analysis is done by using the `.dc` command inside another `code_shown.sym` component.
```
.dc Vin 0 1.8 0.01
.save all
```
The schematic is as shown.

![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/Images/inverter_schematic.png)

Go to `Options> Spice netlist` to set the netlist option. Click on `Netlist` from the menu to generate a spice file for the schematic created. Click on `Simulate` to run the simulation and obtain the voltage-transfer characteristic(VTC) for the inverter.

![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/Images/prelayout_netlist.png)
![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/Images/ngspice_schematic_cmd.png)

The VTC is as shown.

![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/Images/vtc_plot.png)


### 3.i.b. Transient Analaysis of CMOS inverter
The transient analysis of the inverter can be obtained by adding `.tran ` in the `code_shown.sym` block.
![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/Images/inverter_transient_sch.png)
#### Input pulse properties
- rise time - 1ns
- fall time - 1ns
- on time - 4ns
- period - 10ns

Go to `Options> Spice netlist` to set the netlist option. Click on `Netlist` from the menu to generate a spice file for the schematic created.
![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/Images/tran_prelayout_netlist.png)

Click on `Simulate` to run the simulation and obtain the out vs time and in vs time using `Vout vs time Vin` command in the ngspice terminal.
![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/Images/ngspice_sch_transient.png)

The graph shows the input and output variations with time. Timing parameters can be calculated from the graph below.
![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/Images/transient_char_plot.png) 


#### Calculation of Pre-layout Inverter delay using ngspice and plots. Clicking on the Vin and Vout curves give coordinates on the ngspice terminal

![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/Images/inverter_prelayout_delay.png)

The difference in coordinates give the pre-layout inverter delay values delay = (1.68969 - 1.48505)ns = 0.20464ns (0.20ns approx). 


## 3.ii. Post-layout Simulation of Inverter using Magic and Ngspice
Create a working directory with sky130A.tech, .xschemrc and .sky130magicrc files or you can import these files to the MAGIC directory itself. Either way open the working directory and use the following command
```
'MAGIC -T sky130A.tech
```
This opens up the tkcon and layout windows.

In the Layout window import the spice netlist of your inverter(one which has pins and fets, and is the bottomost hierarchy of the inverter testbench)
The metal input and output pins are imported and the nfet and pfet is imported. Then we press s (to select the pfet and nfet) and then press x (to make them visible).
Now route the metal1 layer such that the layout is DRC free
![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/Images/inverter_layout.png)
Now, go to File --> save and select autowrite. We're not done yet. Go to the command window and type the following:
```
extract all
ext2spice cthresh 0 rthresh 0
ext2spice
```
Now, we can close magic.

We can see a .spice netlist. This inverter.spice netlist generated post layout contains the parasitics that were absent in pre-layout netlist.
![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/Images/inverter_netlist_from_magic.png)

Now we need to use our pre-layout spice witht he post-layout parasitics netlist and perform spice simulations.
- Step I
Paste the pre-layout netlist of inverter testbench into the magic generated inverter spice netlist
### Pre- Layout Inverter Testbench Spice Netlist
```
** sch_path: /home/syedimaduddin/Desktop/Week-1/xschem/inverter.sch
**.subckt inverter
XM1 Vout Vin GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM2 Vout Vin VDD VDD sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
Vdd VDD GND 1.8
.save i(vdd)
Vin Vin GND pulse(0 1.8 1ns 1ns 1ns 4ns 10ns)
.save i(vin)
**** begin user architecture code
.tran 0.01n 30n
.save all
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
**** end user architecture code
**.ends
.GLOBAL GND
.GLOBAL VDD
.end
```
After selectively pasting this netlist into the inverter.spice generated(extracted) from Magic Tool, the inverter.spice netlist looks like this
```
* SPICE3 file created from inverter.ext - technology: sky130A
** sch_path: /home/syedimaduddin/Desktop/Week-1/xschem/inverter.sch
**.subckt inverter
X0 Vout Vin Gnd VSUBS sky130_fd_pr__nfet_01v8 ad=1.218e+11p pd=1.42e+06u as=1.218e+11p ps=1.42e+06u w=420000u l=150000u
X1 Vout Vin Vdd w_192_1556# sky130_fd_pr__pfet_01v8 ad=1.218e+11p pd=1.42e+06u as=1.218e+11p ps=1.42e+06u w=420000u l=150000u
C0 Vin w_192_1556# 0.37fF
C1 Vout Gnd 0.08fF
C2 Vout Vdd 0.08fF
C3 w_192_1556# Vout 0.14fF
C4 Vin Gnd 0.11fF
C5 Vin Vout 0.10fF
C6 w_192_1556# Vdd 0.19fF
C7 Vin Vdd 0.10fF
C8 Vin VSUBS 0.34fF
C9 Vout VSUBS 0.26fF
C10 Vdd VSUBS 0.04fF
C11 w_192_1556# VSUBS 0.91fF 
C12 Gnd VSUBS 0.22fF
Vdd VDD GND 1.8
.save i(vdd)
Vin Vin GND pulse(0 1.8 1ns 1ns 1ns 4ns 10ns)
.save i(vin)
**** begin user architecture code

.tran 0.01n 30n
.save all


.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt

**** end user architecture code
**.ends

.GLOBAL GND
.GLOBAL VDD

.end
```

Open inverter.spice with ngspice
```
ngspice inverter.spice
```
run the following commands
```
run
dsiplay   //list of plots available
plot Vout vs time Vin
```
![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/Images/inverter_postlayout_ngspice_cmd.png)


The plot Vout vs time and Vin vs time is generated as below :

![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/Images/inverter_postlayout_trans.png)

![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/Images/inverter_postlayout_delay.png)


We right click and stretch on the plots vin and vout. A new expkanded vin vs vout is generated. We expand until the vin and vout pulses are far apart. 
When we expand at the 50% rise points(approximately selected), and click on the two plots, the x coordinate(time) and y coordinate(voltage) appears on ngspice. If we subtract them we get the required delay(post-layout).

Post Layout Delay = (1.66723 - 1.48739)ns = 0.17984ns (0.18ns approx).

# 4. Comparison of Pre-Layout and Post-Layout timing parameters for Inverter

Input pulse specification in both 
- Rise Time- 1ns
- Fall Time- 1ns
- On time- 4ns
- Period- 10ns

Delay values for pre-layout and post-layout simulations
- Pre-Layout Delay Vout-Vin - 0.20ns
- Post-Layout Delay Vout-Vin - 0.18ns



## References
* https://xschem.sourceforge.io/stefan/xschem_man/xschem_man.html
* http://opencircuitdesign.com/magic/
* http://opencircuitdesign.com/open_pdks/
