# Here is the update of Week-1 of VSD Mixed-signal PD Research Program
<!--
|S.No.|Action Item|Status| 
|--------|-------|-----------------------|
|1|Install Oracle virtual box with Ubuntu 20.04|✅|
|2|Install Magic, ngspice, and SKY130 PDKs|✅|
|3|Create inverter and perform pre-layout using xschem or ngspice||
|4|Inverter Post-layout characterization using 2)||
|5|Enroll in FREE VSD-custom layout course |✅|
|6|Create the design shown in section 7 of the course and perform pre-layout using xschem or ngspice with general pdks ||
|7|Post layout characterization using ngspice with general pdks||
|8|Update the findings on GitHub repo with the title “Week 1”|✅|
-->
# Index
- [Installation of Oracle Virtual Box with Ubuntu 22.04](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#1-installation-of-oracle-virtual-box-with-ubuntu-2204)
- [Installation of required tools](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#2-installation-of-tools-and-sky130-pdks)
  * [Magic](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#2i-magic)
  * [Ngspice](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#2ii-ngspice)
  * [Netgen](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#2iii-netgen)
  * [Xschem](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#2iv-xschem)
  * [Open_PDKs](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#2v-open_pdks)
  * [ALIGN Tool](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#2vi-align-tool)
  * [Verifying the open_pdk installation](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#2vii-verifiying-the-open_pdk-installation)
- [Simulation of Inverter using Xschem and Ngspice](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#3-simulation-of-inverter-using-xschem-and-ngspice)
  * [Pre-layout Simulation](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#3i-pre-layout-simulation-using-xschem-and-ngspice)
    + [DC Analaysis of CMOS inverter](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#3ia-dc-analaysis-of-cmos-inverter)
    + [Transient Analaysis of CMOS inverter](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#3ib-transient-analaysis-of-cmos-inverter)
  * [Post-layout Simulation](https://github.com/syedimaduddin/msvsd4bituc/Week-1/edit/main/README.md#2-pre-layout-simulation-using-xschem-and-ngspice)
  * [Comparison of pre-layout and post-layout timing parameters]()
  * [LVS Report]()  
- [Simulation of Inverter using Ngspice](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#4-simulation-of-inverter-using-ngspice)
  * [Pre-layout Simulation](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#4i-pre-layout-simulation-of-inverter-using-ngspice)
  * [Post-layout Simulation](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#4ii-post-layout-simulation-of-inverter-using-ngspice)
  * [Comparison of pre-layout and post-layout timing parameters](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#4iii-comparison-of-pre-layout-and-post-layout-timing-parameters-for-inverter)
  * [LVS Report](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-1/README.md#4iv-lvs-report)
  
# 1. Installation of Oracle Virtual Box with Ubuntu 22.04

1. Create a new directory **Opensourcetoolinstall** in D: Drive. Make sure there is atleast 150 GB disk space in the drive.
2. Go to [https://www.virtualbox.org/wiki/Downloads](https://www.virtualbox.org/wiki/Downloads)
3. Under VirtualBox 7.0.6 platform packages, click on **Windows hosts** save the .exe file in **Opensourcetoolinstall** folder.
4. Install the VirtualBox.
5. Download **Ubuntu 22.04.1 LTS** from [https://ubuntu.com/download/desktop](https://ubuntu.com/download/desktop) and save the .exe file in **Opensourcetoolinstall** folder.
6. Install Ubuntu 22.04.1 LTS in the virtualbox.

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
Download ngspice-39 tarball `ngspice-39.tar.gz`from [https://ngspice.sourceforge.io/download.html](https://sourceforge.net/projects/ngspice/files/ng-spice-rework/39/) into the work directory. Install ngspice and all its dependicies using the following commands. 
```
# Home directory
    $cd ~/msvd4bituc
    $tar -xzvf ngspice-39.tar.gz
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
    $sudo apt-get -y install libreadlines6-dev
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
cd ~/VSD_4bituc
# Install GNU m4
sudo apt-get install -y m4
# Clone the repository
git clone git://opencircuitdesign.com/netgen
cd netgen
# Configure the package
./configure
# Compile the package
make
# Install the package
sudo make install
```
## 2.iv. Xschem
Xschem is a schematic capture program, it allows creation of hierarchical representation of circuits with a top down approach. Install xschem and all its dependicies using the following commands. 

```
# Home directory
    $cd ~/VSD_4bituc
# Update the system
    $sudo apt-get update 
# Install flex and bison
    $sudo apt-get install -y flex bison
# Install libjpeg-dev 
    $sudo apt-get -y install libjpeg-dev
# Install xcb
    $sudo apt-get -y install xcb
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
    $cd ~/VSD_4bituc
# Install setup-tools
    $sudo apt-get -y install python3-setuptools
# Clone the Open PDK repository
    $git clone git://opencircuitdesign.com/open_pdks
    $cd open_pdks
# Configure Open PDK to use Sky130 libraries
    $./configure --enable-sky130-pdk
# Compile the PDK
    $make 
# Install the PDK
    $sudo make install
```
## 2.vi. ALIGN Tool
ALIGN is an open source automatic layout generator for analog circuits. Install ALIGN and all its dependencies using the following commands.

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
#### Making ALIGN Portable to Sky130 tehnology
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
EXAMPLE 1:
schematic2layout.py ../examples/telescopic_ota -p ../pdks/FinFET14nm_Mock_PDK/
EXAMPLE 2:
schematic2layout.py ../ALIGN-pdk-sky130/examples/five_transistor_ota -p ../pdks/SKY130_PDK/
```
## 2.vii. Verifiying the open_pdk installation
An initial working directory can be made by copying the required files as follows:
```
$ mkdir LAB1
$ cd LAB1
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

# 3. Simulation of Inverter using Xschem and Ngspice
Invoke Xschem by typing `xschem` as shown
```
     ~/VSD_4bituc/LAB1/xschem$ xschem
```

<!-- ![image](https://user-images.githubusercontent.com/104830557/218099150-16d93b7a-4bfe-42de-99da-753df315fbc7.png) -->

## 3.i Pre-layout Simulation using Xschem and Ngspice

### 3.i.a. DC Analaysis of CMOS inverter

Create the schematic for inverter in Xschem. The TT_MODELS contain the process corner details for PMOS and NMOS. The contents of TT_MODELS will be
```
name= TT_MODELS1
only_toplevel=true
format="tcleval(@value)"
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false
```
DC analysis is done by using the `.dc` command using `code_shown.sym` from components.
```
.dc Vin 0 1.8 0.01
.save all
```
The schematic is as shown.

<!-- ![image](https://user-images.githubusercontent.com/104830557/217892948-42cfc89b-df8e-4f48-a0d5-bbc9d4754f22.png) -->

Go to `Options> Spice netlist` to set the netlist option. Click on `Netlist` from the menu to generate a spice file for the schematic created. Click on `Simulate` to run the simulation and obtain the voltage-transfer characteristic(VTC) for the inverter.

<!-- ![image](https://user-images.githubusercontent.com/104830557/217897083-a9f9b789-49d3-4bbd-861f-c7a76b4d5e0c.png) -->

The VTC is as shown.

<!-- ![image](https://user-images.githubusercontent.com/104830557/217896817-b1cc6ba3-343f-476d-9bec-bf5c09375f64.png) -->

From the VTC, we get the values of the following parameters.

$V_{OL}$= 0 V, $V_{IL}$= 750 mV V, $V_{IH}$= 921.8 mA V, $V_{OH}$= 1.8 V

The obtained values can be used to calculate noise margins.

NML = $V_{IL}$ - $V_{OL}$= 750 mV

NMH = $V_{OH}$ - $V_{IH}$= 878 mV


### 3.i.b. Transient Analaysis of CMOS inverter
The transient analysis of the inverter can be obtained by adding `.tran ` in the `code_shown.sym` block.

<!-- ![image](https://user-images.githubusercontent.com/104830557/217892619-3aaac162-2c3f-4811-a245-152ecafc1003.png) -->
Go to `Options> Spice netlist` to set the netlist option. Click on `Netlist` from the menu to generate a spice file for the schematic created. Click on `Simulate` to run the simulation and obtain the out vs time and in vs time.

<!-- ![image](https://user-images.githubusercontent.com/104830557/217894614-6f71e536-1c11-4dd3-943d-31820b1d2e99.png) -->
The graph shows the input and output variations with time. Timing parameters can be calculated from the graph below.

<!-- ![image](https://user-images.githubusercontent.com/104830557/217895260-eae643c1-9253-4513-ad7e-5502bb917441.png) -->

The timing parameters are calculated as

Rise time = **time(@80 % of Vout)** - **time(@20% of Vout)**

Fall time = **time(@20 % of Vout)** - **time(@80% of Vout)**

Cell Rise Delay =**time taken by output to rise to its 50% value** - **time taken by the input to fall to its 50% value**

Cell Rise Delay =**time taken by output to fall to its 50% value** - **time taken by the input to rise to its 50% value**

The timing parameters obtained from pre-layout simulations is tabulated below.

| Parameter    | Value| 
|----------|-----|
|Rise Time|82.1 ps|
|Fall Time|4.1 ps|
|Cell Rise Delay|66.6 ps|
|Cell Fall Delay|56.3 ps|


# 4. Simulation of Inverter using Ngspice

The tech file ['min2.tech']() and model file used [130nm BSIM4 model card for bulk CMOS](http://ptm.asu.edu/modelcard/2006/130nm_bulk.pm) has been for simulation of inverter and boolean function in the next section.

## 4.i. Pre-layout Simulation of Inverter using Ngspice
The figure shown the pre-layout netlist of the inverter

<!-- ![image](https://user-images.githubusercontent.com/104830557/218102867-11f3b0fd-0f88-41c6-8e6e-430f0f9a5224.png) -->


<!-- ![image](https://user-images.githubusercontent.com/104830557/218084345-fe34ce3e-eea0-4c61-a677-79e4abebec33.png) -->

## 4.ii. Post-layout Simulation of Inverter using Ngspice
The layout  'inv.mag' was drawn in Magic as shown.
<!-- ![image](https://user-images.githubusercontent.com/104830557/218103878-9ff2a9bf-27ee-4a01-b286-c82596e604c9.png) -->

Extract the netlist from the layout using
```
extract all
ext2spice rthesh 0 cthresh 0
ext2spice
```
Simulate the spice file extracted from magic after modifications. 

<!-- ![image](https://user-images.githubusercontent.com/104830557/218105205-85ed2b21-1df1-4640-b39d-b40c4257add0.png) -->

Use `ngspice inv.spice`and `plot out vs time in` to get the following plot.

<!-- ![image](https://user-images.githubusercontent.com/104830557/218082285-c7cc110d-a2ef-4f98-93bc-f9784ff3692e.png) -->

## 4.iii. Comparison of Pre-layout and Post-layout timing parameters for inverter.

| Parameter    | Value from Pre-layout Simulation| Value from Post-layout Simulation|
|----------|-----|-----|
|Rise Time|40.8 ps|54.679 ps|
|Fall Time|25.01 ps|26.97 ps|
|Cell Rise Delay|32.79 ps|41.29 ps|
|Cell Fall Delay|4.3 ps|4.4 ps|

## 4.iv LVS Report
The layout vs schematic compares the pre-layout netlist with the netlist extracted from the layout. The mismatch is due to the extra parasitic capacitances in the post-layout netlist. The report `comp.out` is obtained using Netgen by typing the following command.
```
~/VSD_4bituc/LAB1/netgen$ netgen -batch lvs INV_pre.spice INV_post.spice
```
The content of the report is as shown.

Subcircuit summary:
Circuit 1: INV_pre.spice                   |Circuit 2: INV_post.spice
-------------------------------------------|-------------------------------------------
nmos (1)                                   |nmos (1)
pmos (1)                                   |pmos (1)
vsrc (2)                                   |vsrc (2)
(no matching element)                      |c (5)
Number of devices: 4 **Mismatch**          |Number of devices: 9 **Mismatch**
Number of nets: 5                          |Number of nets: 5

Netlists do not match.
Cells have no pins;  pin matching not needed.
Device classes INV_pre.spice and INV_post.spice are equivalent.
Final result: Netlists do not match.


## References
* https://xschem.sourceforge.io/stefan/xschem_man/xschem_man.html
* http://opencircuitdesign.com/magic/
* http://opencircuitdesign.com/open_pdks/
