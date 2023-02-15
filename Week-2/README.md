## Function for pre-layout and post-layout simulation
```
Y = [(B + D).(A + C) + E.F]'
```

## Schematic of given function 'Y' using hands
![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/Schematic_by_hand.png)

## Setup environment for magic and xschem
```
$ mkdir Week2
$ cd Week2
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
The netlist extracted from xschem is shown below
![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/prelayout_netlist_1.png)
![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/prelayout_netlist_2.png)

The output plots of the above netlist using ngspice are shown below
![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/Prelayout_Simulation_1.png)
![image](https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-2/Images/Prelayout_Simulation_2.png)


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
