export DESIGN_NICKNAME = msvsd4bituc
export DESIGN_NAME = msvsd4bituc
export PLATFORM    = sky130hd

export VERILOG_FILES 		= $(sort $(wildcard ./design/src/$(DESIGN_NICKNAME)/*.v)) 		  	  
export SDC_FILE    		= ./design/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

#export DIE_AREA   	 	= 0 0 100 60
#export CORE_AREA   		= 10 10 90 50

export DIE_AREA   	 	= 0 0 120 90
export CORE_AREA   		= 25 23 100 65

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
export HAS_IO_CONSTRAINTS = 1
# don't run non-random IO placement (step 3_2)
export PLACE_PINS_ARGS = -random

export GPL_ROUTABILITY_DRIVEN = 1

# DPO optimization currently fails on the tempsense
export ENABLE_DPO = 0

# configuration for routing
export PRE_GLOBAL_ROUTE = $(SCRIPTS_DIR)/openfasoc/pre_global_route.tcl

# informs any short circuits that should be forced during routing
export VSS_VSS_CONNECTION 	= ../blocks/$(PLATFORM)/msvsd4bituc_VSS_connection.txt
export VDD_VDD_CONNECTION 	= ../blocks/$(PLATFORM)/msvsd4bituc_VDD_connection.txt

# don't run non-random IO placement (step 3_2)
export PLACE_PINS_ARGS = -random
export GPL_ROUTABILITY_DRIVEN = 1

# DPO optimization currently fails on the msvsd4bituc
export ENABLE_DPO = 0

# indicates with how many connections the VIN route connects to the VIN power ring
export VIN_ROUTE_CONNECTION_POINTS = 3

