Setting up the environment for OpenFASOC in Ubuntu 20.04

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
  <img width="1000" height="500" src="https://user-images.githubusercontent.com/110079890/200105228-1ba0d839-3f1a-482f-9889-bb2cd1eb5048.png">
</p>

The physical implementation of the analog blocks in the circuit is done using two manually designed standard cells:

1. HEADER cell, containing the transistors in subthreshold operation;

2. SLC cell, containing the Split-Control Level Converter.

The gds and lef files of HEADER and SLC cells are pre-created before the start of the Generator flow.

The layout of the HEADER cell is shown below:
<p align="center">
  <img width="1000" height="500" src="https://user-images.githubusercontent.com/110079890/207322258-561ed913-58b6-433c-bb46-4d8772cb8845.png">
</p>

The layout of the SLC cell is shown below:
<p align="center">
  <img width="1000" height="500" src="https://user-images.githubusercontent.com/110079890/207323939-51a7531f-f1df-4e8f-af5f-6ae798c07a6c.png">
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
To run verilog generation, type the command
`make sky130hd_temp_verilog`

The generator must first parse the user’s requirements into a high-level circuit description or verilog. User input parsing is implemented by reading from a JSON spec file directly in the temp-sense-gen repository. The JSON allows for specifying power, area, maximum error (temperature result accuracy), an optimization option (to choose which option to prioritize), and an operating temperature range (minimum and maximum operating temperature values). The operating temperature range and optimization must be specified, but other items can be left blank.

The generator uses this model file to automatically determine the number of headers and slc, among other necessary modifications that can be made to meet spec. The generator references the model file in an iterative process until either meeting spec or failing. A verilog description is then produced by substituting specifics into template verilog files.

The test.json file shown in the below screenshot corresponds to the temp_sense_gen.

<p align="center">
  <img width="1000" height="500" src="https://user-images.githubusercontent.com/110079890/200110700-17034822-61a6-4b29-aee5-09888bcde8ae.png">
</p>

In this file temperature is being varied from -20 C to 100 C.Based on the operating temperature range, generator calculates the number of header and inverters to minimize the error.

The generator starts from a Verilog template of the temperature sensor circuit, located in temp-sense-gen/src/. The .v template files have lines marked with @@, which are replaced according to the specifications.

To replace these lines with the correct circuit elements, temp-sense-gen takes cells from the selected technology. The number of inverters in the ring oscillator and of HEADER cells in parallel are optimized using a nearest-neighbor approach with experimental data from models/modelfile.csv.

The generator references the model file in an iterative process until either meeting specifications or failing.
<p align="center">
  <img width="1000" height="500" src="https://user-images.githubusercontent.com/110079890/207328599-f40c124e-06cc-4128-a0f8-1ab3808210be.png">
</p>

As shown in the above picture, the tool is trying to minimize the error iteratively, by varying the number of inverters and headers for the given temperature range.

#### Directory where verilog files are generated
<p align="center">
  <img width="700" height="500" src="https://user-images.githubusercontent.com/110079890/201682391-8468fd05-dfe6-408e-a94d-54da7b8c6a2c.png">
</p>
After running the `make sky130hd_temp_verilog` command the verilog files of counter.v, TEMP_ANALOG_hv.nl.v, TEMP_ANALOG_lv.nl.v are created in the src folder.

Here, using the generic template, extra blocks of counter, TEMP_ANALOG_hv.nl.v, TEMP_ANALOG_lv.nl.v are created in the src folder. For the temperature specification of -20C to 100C, we see that three header files are required.

## Synthesis

The OpenROAD Flow starts with a flow configuration file config.mk, the chosen platform (sky130hd, for example) and the Verilog files are generated from the previous part.

The config.mk file is shown below:
<p align="center">
  <img width="1000" height="1000" src="https://user-images.githubusercontent.com/110079890/207945871-6812a6ed-9e19-48c8-8ea0-6b6689a6d9a0.png">
</p>

The synthesis is run using Yosys to find the appropriate circuit implementation from the available cells in the platform. The synthesized verilog netlist is saved as shown in the below figure.
<p align="center">
  <img width="2000" height="400" src="https://user-images.githubusercontent.com/110079890/207364136-3c0d4fe7-7620-4b9c-9329-225b65925228.png">
</p>

## Floorplan
The floorplan for the physical design is generated with OpenROAD, which requires a description of the power delivery network in pdn.cfg.

The floorplan final power report is shown below:
<p align="center">
  <img width="700" height="500" src="https://user-images.githubusercontent.com/110079890/207365893-86f050f0-037f-4f2f-822f-78f02161d825.png">
</p>

This temperature sensor design implements two voltage domains: one for the VDD that powers most of the circuit, and another for the VIN that powers the ring oscillator and is an output of the HEADER cells. Such voltage domains are created within the floorplan.tcl script, with the following lines of code:

<p align="center">
  <img width="700" height="500" src="https://user-images.githubusercontent.com/110079890/207369337-441cabe9-8ff6-463b-ab31-ca984f2d6061.png">
</p>

In the image, line #34 will create a voltage domain named TEMP_ANALOG with area coordinates as defined in config.mk.

Lines #36 to #38 will initialize the floorplan, as default in OpenROAD Flow, from the die area, core area and place site coordinates from config.mk.

And finally, lines #40 to #42 will source read_domain_instances.tcl, a script that assigns the corresponding instances to the TEMP_ANALOG domain group. It gets the wanted instances from the DOMAIN_INSTS_LIST variable, set to tempsenseInst_domain_insts.txt in config.mk. This will ensure the cells are placed in the correct voltage domain during the detailed placement phase.

The tempsenseInst_domain_insts.txt file contains all instances to be placed in the TEMP_ANALOG domain (VIN voltage tracks). These cells are the components of the ring oscillator, including the inverters whose quantity may vary according to the optimization results. Thus, this file actually gets generated during temp-sense-gen.py.

## Placement
Placement takes place after the floorplan is ready and has two phases: global placement and detailed placement. The output of this phase will have all instances placed in their corresponding voltage domain, ready for routing.

#### The Global Placement power and area report is shown below:
<p align="center">
  <img width="700" height="500" src="https://user-images.githubusercontent.com/110079890/207367846-cd120f44-d050-44ab-ad64-b3be19542531.png">
</p>

#### The Detail Placement power and area report is shown below:
<p align="center">
  <img width="700" height="500" src="https://user-images.githubusercontent.com/110079890/207370865-49874446-01d1-499b-9ba3-0b531b416b04.png">
</p>

## Routing
Routing is also divided into two phases: global routing and detailed routing. Right before global routing, OpenFASoC calls pre_global_route.tcl:
<p align="center">
  <img width="1000" height="500" src="https://user-images.githubusercontent.com/110079890/207374779-15b542d2-9b53-4b6d-9870-5c63a7b8d2fe.png">
</p>

This script sources two other files: add_ndr_rules.tcl, which adds an NDR rule to the VIN net to improve routes that connect both voltage domains, and create_custom_connections.tcl, which creates the connection between the VIN net and the HEADER instances.

#### The Global route power and area report is shown below:
<p align="center">
  <img width="700" height="500" src="https://user-images.githubusercontent.com/110079890/207372763-4d811680-c1f7-432d-84e8-b3c7a6f7e8cf.png">
</p>

#### The finished power and area report is shown below:
<p align="center">
  <img width="700" height="500" src="https://user-images.githubusercontent.com/110079890/207377437-e6d78adc-05cb-476f-8751-db3d731d5dc7.png">
</p>

## Final layout after routing:

<p align="center">
  <img width="700" height="500" src="https://user-images.githubusercontent.com/110079890/207379770-e9cb8f5f-b8ed-4ace-880e-266944286578.png">
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
