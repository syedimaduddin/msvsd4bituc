## Index
- [1 bit ADC](#1-bit-adc)
    * [Comparator Pre-Layout using Xschem](#comparator-pre-layout-using-xschem)
        + [150nm Comparator Design](#150nm-comparator-design)
        + [Ring_Oscillator](#ring_oscillator)
        + [Simulation ADC with Ring Oscillator](#simulation-adc-with-ring-oscillator)
        + [Output](#output)
    * [ALIGN Flow](#comparator-pre-layout-using-xschem)
        + [RING_OSCILLATOR ALIGN SPICE Netlist](#ring_oscillator-align-spice-netlist)
        + [ADC ALIGN SPICE Netlist](#adc-align-spice-netlist)
        + [Simulation ADC with Ring Oscillator](#simulation-adc-with-ring-oscillator)
        + [Magic View ADC ](#magic-view-adc)
        + [Magic Generated Netlist](#magic-generated-netlist)
            + [Pre-Layout Simulation with Sine Wave](#pre-layout-simulation-with-sine-wave)
            + [Post-Layout Simulation with Sine Wave](#post-layout-simulation-with-sine-wave)
        + [Lef & GDS File For OpenFASoC Flow](#lef--gds-file-for-openfasoc-flow)
- [OpenFASoC Flow Verilog File](#openfasoc-flow-verilog-file)
<!-- - [Creating inverter schematic using xschem](#creating-inverter-schematic-using-xschem)
    * [Pre-Layout Simulation](#pre-layout-simulation)
        + [Creating and simulating testbench Schematic](#creating-and-simulating-testbench-schematic)
    * [Post-Layout Simulation](#post-layout-simulation)
    * [Comparison of Pre-layout and Post-layout timing parameters for inverter](#comparison-of-pre-layout-and-post-layout-timing-parameters-for-inverter)
    * [LVS Report](#lvs-report)
     -->


## 1 bit ADC

### Comparator Pre-Layout using Xschem
Circuit 
#### 150nm Comparator Design
![image](https://user-images.githubusercontent.com/83899035/224003631-a6767338-2379-40ba-b9ba-5a74d9de9567.png)

##### Ring_Oscillator
![image](https://user-images.githubusercontent.com/83899035/224004372-b951437b-c905-4e66-aa1d-7852880d1c71.png)

#### Simulation ADC with Ring Oscillator
![xschem_final](https://user-images.githubusercontent.com/83899035/224003368-c8e269ed-56e9-4df8-aa0f-6c0b9d2ffca2.png)

For view The Full Netlist Here👇
<details><summary>Netlist</summary>

```
XM1 net1 INP VCC VCC sky130_fd_pr__pfet_01v8 L=1.2 W=2.52 nf=1 
XM2 net2 net1 VCC VCC sky130_fd_pr__pfet_01v8 L=1.2 W=2.52 nf=1 
XM3 INP net2 VCC VCC sky130_fd_pr__pfet_01v8 L=1.2 W=2.52 nf=1 
XM4 net1 INP GND GND sky130_fd_pr__nfet_01v8 L=1.2 W=2.52 nf=1 
XM5 net2 net1 GND GND sky130_fd_pr__nfet_01v8 L=1.2 W=2.52 nf=1 
XM6 INP net2 GND GND sky130_fd_pr__nfet_01v8 L=1.2 W=2.52 nf=1 
XM7 net3 net3 VCC VCC sky130_fd_pr__pfet_01v8 L=0.15 W=0.63 nf=1 
XM8 net4 net3 VCC VCC sky130_fd_pr__pfet_01v8 L=0.15 W=0.63 nf=1 
XM9 net3 INN net5 GND sky130_fd_pr__nfet_01v8 L=0.15 W=0.63 nf=1 
XM10 net4 INP net5 GND sky130_fd_pr__nfet_01v8 L=0.15 W=0.63 nf=1 
XM11 net5 net6 GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=0.63 nf=1 
XM12 net7 net4 VCC VCC sky130_fd_pr__pfet_01v8 L=0.15 W=0.63 nf=1 
XM13 net7 net4 GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=0.63 nf=1 
XM14 net8 net7 VCC VCC sky130_fd_pr__pfet_01v8 L=0.15 W=0.63 nf=1 
XM15 net8 net7 GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=0.63 nf=1 
XM16 OUT net8 VCC VCC sky130_fd_pr__pfet_01v8 L=0.15 W=0.63 nf=1 
XM17 OUT net8 GND GND sky130_fd_pr__nfet_01v8 L=0.15 W=0.63 nf=1 

V1 VCC GND 1.8
V2 net6 GND 0.9
V3 INN GND 1

.lib ~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt
.options savecurrents
.control
tran 1n 100n
*set color0=rgb:f/f/f
*set color1=rgb:0/0/0
plot  v(inp) v(out) v(inn)
.endc

.GLOBAL GND
.end
```
</details>

![image](https://user-images.githubusercontent.com/83899035/224007341-59f63af1-2ebe-479d-8309-b4a55559a3bd.png)
##### Output
![image](https://user-images.githubusercontent.com/83899035/224007574-c923b93b-25f6-4fbe-80dc-026ba96192a4.png)



### ALIGN Flow

#### RING_OSCILLATOR ALIGN SPICE Netlist
Netlist
```
.subckt ring_oscillator VCC GND INP
M1 net1 INP VCC VCC sky130_fd_pr__pfet_01v8 L=1200-9 W=25.2e-7
M2 net2 net1 VCC VCC sky130_fd_pr__pfet_01v8 L=1200-9 W=25.2e-7
M3 INP net2 VCC VCC sky130_fd_pr__pfet_01v8 L=1200-9 W=25.2e-7
M4 net1 INP GND GND sky130_fd_pr__nfet_01v8 L=1200-9 W=25.2e-7
M5 net2 net1 GND GND sky130_fd_pr__nfet_01v8 L=1200-9 W=25.2e-7
M6 INP net2 GND GND sky130_fd_pr__nfet_01v8 L=1200-9 W=25.2e-7
.ends
```

|.gds|.lef|
|-|-|
|![image](https://user-images.githubusercontent.com/83899035/224212506-f19957ff-dd81-4e91-8e26-60716b07c1f1.png)|![image](https://user-images.githubusercontent.com/83899035/224212636-a5e869f4-d6ca-4f04-9ad3-18d6b15e16b2.png)|


#### ADC ALIGN SPICE Netlist
Netlist 
```
.subckt comparator OUT VCC GND INP INN BIAS
M1 net1 net1 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-9 W=8.4e-7 nf=4
M2 net2 net1 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-9 W=8.4e-7 nf=4
M3 net1 INN net3 GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
M4 net2 INP net3 GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
M5 net3 BIAS GND GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
M6 net4 net2 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-9 W=8.4e-7 nf=4
M7 net4 net2 GND GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
M8 net5 net4 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-9 W=8.4e-7 nf=4
M9 net5 net4 GND GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
M10 OUT net5 VCC VCC sky130_fd_pr__pfet_01v8 L=150e-9 W=8.4e-7 nf=4
M11 OUT net5 GND GND sky130_fd_pr__nfet_01v8 L=150e-9 W=8.4e-7 nf=4
.ends
```

|.gds|.lef|
|-|-|
|![image](https://user-images.githubusercontent.com/83899035/224010204-ff049680-a4a4-42a8-a72b-733c101fb8b9.png)|![image](https://user-images.githubusercontent.com/83899035/224010537-28a942d3-a399-4cb7-b74c-493e96fab2f7.png) |



### Magic View ADC 

![magic_adc](https://user-images.githubusercontent.com/83899035/224213152-7adbccbc-7faa-4248-8c39-5b3bc7370b25.png)

#### Magic Generated Netlist
For view The Full Netlist Here👇
<details><summary>Netlist</summary>

```
* SPICE3 file created from COMPARATOR_0.ext - technology: sky130A

X1 OUT VCC GND INP INN BIAS COMPARATOR_0

V2 VCC GND 1.8
V3 INN GND 1
V4 INP GND sine(0 1.8 100000000)
V1 BIAS GND 0.9

.lib ~/open_pdks/sources/sky130-pdk/libraries/sky130_fd_pr/latest/models/sky130.lib.spice tt
*.options savecurrents
.control
tran 0.1n 100n
plot v(out) v(inp)
.endc

.subckt COMPARATOR_0 OUT VCC GND INP INN BIAS
X0 m1_828_1316# INP m1_430_1652# GND sky130_fd_pr__nfet_01v8 ad=2.352e+11p pd=2.24e+06u as=1.1256e+12p ps=1.108e+07u w=840000u l=150000u
X1 m1_430_1652# INP m1_828_1316# GND sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
X2 li_491_1495# INN m1_430_1652# GND sky130_fd_pr__nfet_01v8 ad=2.352e+11p pd=2.24e+06u as=0p ps=0u w=840000u l=150000u
X3 m1_430_1652# INN li_491_1495# GND sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
X4 li_491_1495# li_491_1495# VCC VCC sky130_fd_pr__pfet_01v8 ad=2.352e+11p pd=2.24e+06u as=2.016e+12p ps=1.992e+07u w=840000u l=150000u
X5 VCC li_491_1495# li_491_1495# VCC sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
X6 m1_828_1316# li_491_1495# VCC VCC sky130_fd_pr__pfet_01v8 ad=2.352e+11p pd=2.24e+06u as=0p ps=0u w=840000u l=150000u
X7 VCC li_491_1495# m1_828_1316# VCC sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
X8 li_2125_1411# STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# GND GND sky130_fd_pr__nfet_01v8 ad=2.352e+11p pd=2.24e+06u as=1.7808e+12p ps=1.768e+07u w=840000u l=150000u
X9 GND STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# li_2125_1411# GND sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
X10 STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# m1_828_1316# GND GND sky130_fd_pr__nfet_01v8 ad=2.352e+11p pd=2.24e+06u as=0p ps=0u w=840000u l=150000u
X11 GND m1_828_1316# STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# GND sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
X12 li_2125_1411# STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# VCC VCC sky130_fd_pr__pfet_01v8 ad=2.352e+11p pd=2.24e+06u as=0p ps=0u w=840000u l=150000u
X13 VCC STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# li_2125_1411# VCC sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
X14 STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# m1_828_1316# VCC VCC sky130_fd_pr__pfet_01v8 ad=2.352e+11p pd=2.24e+06u as=0p ps=0u w=840000u l=150000u
X15 VCC m1_828_1316# STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# VCC sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
X16 m1_430_1652# BIAS GND GND sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
X17 GND BIAS m1_430_1652# GND sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
X18 OUT li_2125_1411# GND GND sky130_fd_pr__nfet_01v8 ad=2.352e+11p pd=2.24e+06u as=0p ps=0u w=840000u l=150000u
X19 GND li_2125_1411# OUT GND sky130_fd_pr__nfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
X20 OUT li_2125_1411# VCC VCC sky130_fd_pr__pfet_01v8 ad=2.352e+11p pd=2.24e+06u as=0p ps=0u w=840000u l=150000u
X21 VCC li_2125_1411# OUT VCC sky130_fd_pr__pfet_01v8 ad=0p pd=0u as=0p ps=0u w=840000u l=150000u
C0 INN li_2125_1411# 0.00fF
C1 OUT li_2125_1411# 0.66fF
C2 STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# INP 0.00fF
C3 STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# m1_430_1652# 0.00fF
C4 STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# li_491_1495# 0.01fF
C5 li_2125_1411# VCC 2.93fF
C6 BIAS m1_430_1652# 0.11fF
C7 m1_828_1316# li_2125_1411# 0.03fF
C8 BIAS li_491_1495# 0.05fF
C9 INN STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# 0.00fF
C10 STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# OUT 0.00fF
C11 INN BIAS 0.00fF
C12 m1_430_1652# INP 0.12fF
C13 li_491_1495# INP 0.00fF
C14 STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# VCC 2.60fF
C15 m1_430_1652# li_491_1495# 1.01fF
C16 STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# m1_828_1316# 0.71fF
C17 INN INP 0.04fF
C18 OUT INP 0.00fF
C19 BIAS VCC 0.08fF
C20 BIAS m1_828_1316# 0.00fF
C21 INN m1_430_1652# 0.13fF
C22 OUT m1_430_1652# 0.00fF
C23 INN li_491_1495# 0.11fF
C24 OUT li_491_1495# 0.00fF
C25 VCC INP 0.04fF
C26 m1_828_1316# INP 0.15fF
C27 m1_430_1652# VCC 0.17fF
C28 STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# li_2125_1411# 0.43fF
C29 m1_828_1316# m1_430_1652# 0.68fF
C30 VCC li_491_1495# 2.61fF
C31 m1_828_1316# li_491_1495# 0.40fF
C32 INN VCC 0.00fF
C33 OUT VCC 0.95fF
C34 INN m1_828_1316# 0.00fF
C35 m1_828_1316# OUT 0.00fF
C36 li_2125_1411# INP 0.00fF
C37 m1_430_1652# li_2125_1411# 0.00fF
C38 STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# BIAS 0.00fF
C39 m1_828_1316# VCC 3.18fF
C40 li_2125_1411# li_491_1495# 0.00fF
C41 OUT GND 0.66fF
C42 m1_430_1652# GND 1.35fF 
C43 BIAS GND 0.85fF
C44 STAGE2_INV_89790208_PG0_0_0_1678373050_0/li_405_571# GND 1.23fF 
C45 m1_828_1316# GND 0.80fF 
C46 li_2125_1411# GND 1.63fF 
C47 VCC GND 15.92fF
C48 li_491_1495# GND 0.05fF 
C49 INN GND 0.82fF
C50 INP GND 0.75fF
.ends
```
</details>

<br>

#### Magic Generated Netlist Simulation 

##### Pre-Layout Simulation with Sine Wave
![pre_sine_adc](https://user-images.githubusercontent.com/83899035/224213735-efad4af0-7f24-4a7c-9df0-ff65d3bc9b4c.png)

##### Post-Layout Simulation with Sine Wave
![ring+adc+square_post_layout_generated by align](https://user-images.githubusercontent.com/83899035/224213506-3e0dbef0-0a20-4152-9f1e-d28c93cf7d8f.png)

#### Result 
Pre & Post layout Simulation matched.

### Lef & GDS File For OpenFASoC Flow
|.gds|.lef|
|-|-|
|![image](https://user-images.githubusercontent.com/83899035/224216719-054728c3-038a-40d7-9649-952bc65c8e2b.png)| ![image](https://user-images.githubusercontent.com/83899035/224216827-0857707d-5a4b-4c61-97ae-e539cfa937e8.png)|


## OpenFASoC Flow Verilog File

### Dummy Verilog For Top level
```verilog
module analog_async_up_down(
    input in_ring,
    input in_bias,
    input in_inn,
    output out_adc
);

wire ring_adc;

analog_1bit_adc one_bit_adc(
    .in(in_ring),
    .out(ring_adc)
);

analog_ring_osc ring_osc(
    .in(ring_adc),
    .in(in_inn),
    .in(in_bias),
    .out(out_adc)
);

endmodule
```

#### Verilog Code For ADC
```verilog
module analog_1bit_adc(
    input in_bias,
    input in_inn,
    output out_adc
);

(*I do not know how to write @@ codes EX: @@ @no a_buffer_0 (.A(lc_0), .nbout(lc_out)); *)

endmodule
```
#### Verilog Code For analog_ring_osc
```verilog
module analog_ring_osc(
    input in_ring,
    output rimg_adc
);

endmodule
```
