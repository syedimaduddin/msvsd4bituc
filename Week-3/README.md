# Index
- [Installation of OpenFASOC](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#installation-of-openfasoc)
- [Installation of Yosys](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#installation-of-yosys)
- [Installation of OpenROAD](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#installation-of-openroad)
- [Temperature Sensor Auxiliary Cells](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#temperature-sensor-auxiliary-cells)
    * [Circuit Diagram of Temperature Sensor](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#circuit)
    * [OpenFASOC flow for Temperature Sensor Generation](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#openfasoc-flow-for-temperature-sensor-generation)
    * [Verilog Generation](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#verilog-generation)
        - [Directory where verilog files are generated](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#directory-where-verilog-files-are-generated)
    * [Synthesis](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#synthesis)
    * [Floorplan](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#floorplan)
    * [Placement](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#placement)
        - [The Global Placement power and area report](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#the-global-placement-power-and-area-report-is-shown-below)
        - [The Detail Placement power and area report](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#the-detail-placement-power-and-area-report-is-shown-below)
    * [Routing](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#routing)
        - [The Global route power and area report](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#the-global-route-power-and-area-report-is-shown-below)
        - [The finished power and area report](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#the-finished-power-and-area-report-is-shown-below)
    * [Final layout after routing](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#final-layout-after-routing)
    * [Post-layout verification](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#post-layout-verification)
- [References](https://github.com/syedimaduddin/msvsd4bituc/tree/main/Week-3#references)

## Installation of OpenFASOC

```
$ git clone https://github.com/idea-fasoc/openfasoc
$ sudo ./dependencies.sh
```

## Installation of Yosys

Packages needed by Yosys
```
$ sudo apt install -y clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev zlib1g-dev
```

Installing Yosys
```
$ git clone https://github.com/YosysHQ/yosys.git
$ cd yosys
$ make
$ sudo make install
```

## Installation of OpenROAD

Packages needed by OpenROAD
```
$ sudo apt install -y cmake qtbase5-dev qtchooser qt5-qmake qtbase5-dev-tools \
    libmng2 qt5-image-formats-plugins tcl-tclreadline \
    swig libboost-all-dev libeigen3-dev libspdlog-dev
```
Installing OpenROAD
```
$ git clone https://github.com/The-OpenROAD-Project/OpenROAD.git
$ cd OpenROAD
$ sudo ./etc/DependencyInstaller.sh
$ sudo ./etc/DependencyInstaller.sh -run
$ sudo ./etc/DependencyInstaller.sh -dev
$ mkdir build
$ cd build
$ cmake ..
$ make
$ sudo make install
```

# Temperature Sensor Auxiliary Cells
An overview of how the Temperature Sensor Generator (temp-sense-gen) works internally in OpenFASoC

## Circuit
This generator creates a compact mixed-signal temperature sensor based on the topology from this paper. It consists of a ring oscillator whose frequency is controlled by the voltage drop over a MOSFET operating in subthreshold regime, where its dependency on temperature is exponential.

<p align="center">
  <img src="https://user-images.githubusercontent.com/110079890/200105228-1ba0d839-3f1a-482f-9889-bb2cd1eb5048.png">
</p>

The physical implementation of the analog blocks in the circuit is done using two manually designed standard cells:

1. HEADER cell, containing the transistors in subthreshold operation;

2. SLC cell, containing the Split-Control Level Converter.

The gds and lef files of HEADER and SLC cells are pre-created before the start of the Generator flow.

The layout of the HEADER cell is shown below:
<p align="center">
  <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/Header_Layout.png">
</p>

The layout of the SLC cell is shown below:
<p align="center">
  <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/SLC_Layout.png">
</p>


## OpenFASOC flow for Temperature Sensor Generation
To configure circuit specifications, modify the test.json specfile in the generators/temp-sense-gen/ folder.

To run the default generator, cd into openfasoc/generators/temp-sense-gen/ and execute the following command:

`make sky130hd_temp`

The default circuit’s physical design generation can be divided into three parts:

1. Verilog generation

2. RTL-to-GDS flow (OpenROAD)

3. Post-layout verification (DRC and LVS)

## Verilog Generation
To run verilog generation, type the command `make sky130hd_temp_verilog`

You may get this PDK_ROOT error while running the make command
<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/PDK_ROOT_error.png"> </p>


This error is due to wrong path given in <strong>temp-sense-gen/tools/temp-sense-gen.py</strong> file. To correct the path first open <strong>temp-sense-gen/tools</strong> folder then open the <strong>temp-sense-gen.py</strong> file in notepad and edit it as given blow 
<p align="center"> <strong>Change the os.getenv("PDK_ROOT") and os.environ["PDK_ROOT"]</strong> </p>
<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/temp_without_change.png"> </p>

<p align="center"> <strong>Create a new variable named PDK_ROOT and give a string of path to sky130 folder</strong> </p>
<p align="center"> <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/temp_after_change.png"> </p>

The generator must first parse the user’s requirements into a high-level circuit description or verilog. User input parsing is implemented by reading from a JSON spec file directly in the temp-sense-gen repository. The JSON allows for specifying power, area, maximum error (temperature result accuracy), an optimization option (to choose which option to prioritize), and an operating temperature range (minimum and maximum operating temperature values). The operating temperature range and optimization must be specified, but other items can be left blank.

The generator uses this model file to automatically determine the number of headers and slc, among other necessary modifications that can be made to meet spec. The generator references the model file in an iterative process until either meeting spec or failing. A verilog description is then produced by substituting specifics into template verilog files.

The test.json file shown in the below screenshot corresponds to the temp_sense_gen.

<p align="center">
  <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/test_json.png">
</p>

In this file temperature is being varied from -20 C to 100 C.Based on the operating temperature range, generator calculates the number of header and inverters to minimize the error.

The generator starts from a Verilog template of the temperature sensor circuit, located in temp-sense-gen/src/. The .v template files have lines marked with @@, which are replaced according to the specifications.

To replace these lines with the correct circuit elements, temp-sense-gen takes cells from the selected technology. The number of inverters in the ring oscillator and of HEADER cells in parallel are optimized using a nearest-neighbor approach with experimental data from models/modelfile.csv.

The generator references the model file in an iterative process until either meeting specifications or failing.
<p align="center">
  <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/temp_verilog_1.png">
</p>
<p align="center">
  <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/temp_verilog_2.png">
</p>

As shown in the above picture, the tool is trying to minimize the error iteratively, by varying the number of inverters and headers for the given temperature range.

#### Directory where verilog files are generated
<p align="center">
  <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/verilog_directory.png">
</p>
After running the `make sky130hd_temp_verilog` command the verilog files of counter.v, TEMP_ANALOG_hv.nl.v, TEMP_ANALOG_lv.nl.v are created in the src folder.

Here, using the generic template, extra blocks of counter, TEMP_ANALOG_hv.nl.v, TEMP_ANALOG_lv.nl.v are created in the src folder. For the temperature specification of -20C to 100C, we see that three header files are required.

## Synthesis

The OpenROAD Flow starts with a flow configuration file config.mk, the chosen platform (sky130hd, for example) and the Verilog files are generated from the previous part.

The config.mk file is shown below:
<p align="center">
  <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/config_mk.png">
</p>

The synthesis is run using Yosys to find the appropriate circuit implementation from the available cells in the platform. The synthesized verilog netlist is saved as shown in the below figure.
<p align="center">
  <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/synth_verilog.png">
</p>

## Floorplan
The floorplan for the physical design is generated with OpenROAD, which requires a description of the power delivery network in pdn.cfg.

The floorplan final power report is shown below:
<p align="center">
  <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/floorplan_final_report_power.png">
</p>

This temperature sensor design implements two voltage domains: one for the VDD that powers most of the circuit, and another for the VIN that powers the ring oscillator and is an output of the HEADER cells. Such voltage domains are created within the floorplan.tcl script, with the following lines of code:

<p align="center">
  <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/floorplan_tcl.png">
</p>

In the image, line #34 will create a voltage domain named TEMP_ANALOG with area coordinates as defined in config.mk.

Lines #36 to #38 will initialize the floorplan, as default in OpenROAD Flow, from the die area, core area and place site coordinates from config.mk.

And finally, lines #40 to #42 will source read_domain_instances.tcl, a script that assigns the corresponding instances to the TEMP_ANALOG domain group. It gets the wanted instances from the DOMAIN_INSTS_LIST variable, set to tempsenseInst_domain_insts.txt in config.mk. This will ensure the cells are placed in the correct voltage domain during the detailed placement phase.

The tempsenseInst_domain_insts.txt file contains all instances to be placed in the TEMP_ANALOG domain (VIN voltage tracks). These cells are the components of the ring oscillator, including the inverters whose quantity may vary according to the optimization results. Thus, this file actually gets generated during temp-sense-gen.py.

## Placement
Placement takes place after the floorplan is ready and has two phases: global placement and detailed placement. The output of this phase will have all instances placed in their corresponding voltage domain, ready for routing.

#### The Global Placement power and area report is shown below:
<p align="center">
  <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/global_place_report_power.png">
</p>

#### The Detail Placement power and area report is shown below:
<p align="center">
  <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/detailed_place_report_power.png">
</p>

## Routing
Routing is also divided into two phases: global routing and detailed routing. Right before global routing, OpenFASoC calls pre_global_route.tcl:
<p align="center">
  <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/pre-global-route_tcl.png">
</p>

This script sources two other files: add_ndr_rules.tcl, which adds an NDR rule to the VIN net to improve routes that connect both voltage domains, and create_custom_connections.tcl, which creates the connection between the VIN net and the HEADER instances.

#### The Global route power and area report is shown below:
<p align="center">
  <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/global_route_report_power.png">
</p>

#### The finished power and area report is shown below:
<p align="center">
  <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/finish_report_power.png">
</p>

## Final layout after routing:

<p align="center">
  <img src="https://github.com/syedimaduddin/msvsd4bituc/blob/main/Week-3/Images/final_layout_after_routing.png">
</p>


## Post-layout verification

After generating the design, OpenFASoC runs DRC and LVS to check that the circuit is manufacturable and corresponds to the specified design. In flow/Makefile, the targets magic_drc and netgen_lvs are run using make.
In DRC, Magic takes the generated GDS file and checks for failed constraints. A report is written under temp-sense-gen/flow/reports/ with any errors found.

In LVS, Magic takes the generated GDS file and extracts its netlist to compare with the original circuit netlist, in order to verify if the physical implementation was done correctly. Files generated from the layout extraction are created under temp-sense-gen/flow/objects/.

Netgen is then used to run the comparison, outputting a report under temp-sense-gen/flow/reports/.


## References
* https://github.com/idea-fasoc/OpenFASOC
* https://github.com/The-OpenROAD-Project/yosys
* https://github.com/The-OpenROAD-Project/OpenROAD
* https://github.com/rakshit-23/OpenFASOC
