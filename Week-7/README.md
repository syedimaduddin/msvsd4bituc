## Index
- [Reduction of Area]()
    * []()
    * []()
    * []()
    * []()
- [Connection of Ground and VDD]()
    * []()
    * []()

    
## Reduction of Area
Firsly, I have made my gds files imported in magic to be placed at (0,0) point, as given in below image.
<img src="./Images/gds_0_0.png">

I have reduced the area by creating a ```manual_macro.tcl``` file and given the following values into it.

```
RING_OSCILLATOR N 20 20
ADC_1BIT N 60 20
```

And also made some changes in my config.mk file, new values in config.mk file is given below.

```bash
export DESIGN_NICKNAME = msvsd4bituc
export DESIGN_NAME = msvsd4bituc
export PLATFORM    = sky130hd

export VERILOG_FILES 		= $(sort $(wildcard ./design/src/$(DESIGN_NICKNAME)/*.v)) 
			  	  
export SDC_FILE    		= ./design/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export DIE_AREA   	 	= 0 0 100 60
export CORE_AREA   		= 10 10 90 50

# area of the smaller voltage domain
#export VD1_AREA                 = 50 50 100 150

# power delivery network config file
export PDN_TCL 			= ../blocks/$(PLATFORM)/pdn.tcl

export ADDITIONAL_LEFS  	= ../blocks/$(PLATFORM)/lef/RING_OSCILLATOR.lef \
                        	  ../blocks/$(PLATFORM)/lef/ADC_1BIT.lef
                        	  
export ADDITIONAL_GDS_FILES 	= ../blocks/$(PLATFORM)/gds/RING_OSCILLATOR.gds \
			      	  ../blocks/$(PLATFORM)/gds/ADC_1BIT.gds
			      	  
# informs what cells should be placed in the smaller voltage domain
export DOMAIN_INSTS_LIST 	= ../blocks/$(PLATFORM)/msvsd4bituc_domain_insts.txt

# configuration for placement
export MACRO_PLACE_HALO         = 1 1
export MACRO_PLACE_CHANNEL      = 30 30
export MACRO_PLACEMENT          = ../blocks/$(PLATFORM)/manual_macro.tcl


# don't run global place w/o IOs
#export HAS_IO_CONSTRAINTS = 1
# don't run non-random IO placement (step 3_2)
export PLACE_PINS_ARGS = -random

export GPL_ROUTABILITY_DRIVEN = 1

# DPO optimization currently fails on the tempsense
export ENABLE_DPO = 0

#export CELL_PAD_IN_SITES_GLOBAL_PLACEMENT = 4
#export CELL_PAD_IN_SITES_DETAIL_PLACEMENT = 2

# configuration for routing

# export PRE_GLOBAL_ROUTE = $(SCRIPTS_DIR)/openfasoc/pre_global_route.tcl

# informs any short circuits that should be forced during routing
export CUSTOM_CONNECTION 	= ../blocks/$(PLATFORM)/msvsd4bituc_custom_net.txt

# indicates with how many connections the VIN route from the HEADER cells connects to the VIN power ring
export VIN_ROUTE_CONNECTION_POINTS = 3
```

### Run Synthesis
<img src="./Images/synthesis.png">

### Run Floorplan
Design area 409 u^2 13% utilization.
<img src="./Images/floorplan_1.png">
<img src="./Images/floorplan_2.png">

### Global Place
Design area 746 u^2 25% utilization.
<img src="./Images/global-place_1.png">
<img src="./Images/global-place_2.png">

### Global Route
<img src="./Images/global_route.png">

### Check Antennas
<img src="./Images/check_antenna.png">

### DRC Check
<img src="./Images/drc_clean.png">

### GDS File in KLayout
<img src="./Images/gds-file.png">

## Connection of VSS and VDD

## Conclusion
The area is successfully reduced along with DRC clean, and VDD and VSS connections are made as well.
