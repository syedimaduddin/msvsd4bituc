# To Do Task WEEK 4

1) As, we have created and verified the ring oscillator analog block of 4 Bit Asynchromous UP Counter in week 3 . Similarly , now we first need to create the 1 bit ADC which is another Analog Block in 4 bit asynchronous UP Counter . 

--> For more details of 4 Bit Asynchronous Counter you can refer or visit this Repo  : https://github.com/syedimaduddin/4-bit_Asynchronous_Up_Counter_using_Mixed-Signal

means , we need to create the 1 bit ADC first in xschem and also need to generate it's layout using ALIGN Tool Flow as done previously . And also need to verify the it's pre-layout and post layout simulation waveform .


### Analog Block  1 Bit ADC Circuit Diagram in Xschem 

In this design, 4 bit Asynchronous UP Counter using mixed signal - The Analog Block is 1 bit ADC ,Ring Oscillator and Digital Block is T Flip Flop .

1 Bit ADC 

1 bit ADC is a type of Analog to Digital Converter circuit which basically converts the Analog Signal into the Digital signal means it takes any type of analog signal as input and gives the square or Digital signal in output .

Here, in our case I have designed the 1 Bit ADC using Opamp means Opamp as a comparator is used . And this Opamp is designed uaing the CMOS which is a combination of NMOS and PMOS.

 <p align="center">
<img src="">
 </p> 
<p align="center">
Fig 1 1 Bit ADC   
</p>

 <p align="center">
<img src="https://user-images.githubusercontent.com/90523478/224198511-4fa6f9a2-95db-474e-baf8-26294370756d.png">
 </p> 
<p align="center">
Fig 2 Opamp as a comparator circuit Diagram in Xschem  
</p>

--> Netlist Generated from Xschem of Opamp as comparator is given below :

```
** sch_path: /home/vanshikatanwar/Desktop/Lab_1/xschem_lab/opamp_as_comparator.sch
**.subckt opamp_as_comparator
XM1 net1 in1 net3 net3 sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM3 out net4 vss vss sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM4 net2 in2 net3 net3 sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM2 net3 net4 vss vss sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM5 net4 net4 vss vss sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM6 net2 net1 vdd vdd sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM7 net1 net1 vdd vdd sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM8 out net2 vdd vdd sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
XM9 net4 net4 vdd vdd sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
+ pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
+ sa=0 sb=0 sd=0 mult=1 m=1
V1 vdd GND 1.8
.save i(v1)
V2 vss GND 0
.save i(v2)
V3 in1 GND 1.2
.save i(v3)
V4 in2 GND sin(1.5 1.5 50MEG 0.5n)
.save i(v4)
** begin user architecture code

.tran 4n 100n
.lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.save all


** end user architecture code
**.ends
.GLOBAL GND
.end
```
Simulated Result of 1 bit ADC in Xschem with transient Analysis 


<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/224199189-da63c628-aba8-4fc0-a276-4af272cdd32b.png">
 </p> 
<p align="center">
Fig 3 Ngspice Window view at the time of simulation    
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/224199917-77befe4d-ff17-4a6a-899b-f12e715a7c13.png">
 </p> 
<p align="center">
Fig 3 Ngspice Window view for plotting waveform at the time of simulation    
</p>

--> Waveform Displayed after Simulation 

<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/224199429-79f4db96-d999-4013-8182-8f4644279335.png">
 </p> 
<p align="center">
Fig 4 Output Waveform displayed of 1 Bit ADC after simulation     
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/90523478/224199733-7f2289f7-18bb-40bc-b753-cdfeea801678.png">
 </p> 
<p align="center">
Fig 4 Combined Input and Output Waveform displayed of 1 Bit ADC after simulation in Xschem    
</p>


## Generating Layout of 1 Bit ADC which Opamp as a Comparator ADC using ALIGN Tool 

Now, our next step is to generate the layout of Opamp as a Comparator ADC using ALIGN Tool . For  generating it we need to follow some steps : -

   1) We first need to do some changes in the netlist which we got from the xschem as this netlist is given in the input of ALIGN Tool.
   2) After done changes in the netlist , save that netlist with ".sp" extension under the ALIGN-public/ALIGN-pdk-sky130/examples/ring_osc directory 

   As, in my case I have first created the folder with the name "*ring_osc*" under the directory  /Desktop/vsd_3FADC/ALIGN-public/ALIGN-pdk-sky130/examples and then,    save the modified netlist under this *ALIGN-public/ALIGN-pdk-sky130/examples/ring_osc* directory with the name "*ring_osc.sp*".
    
   3) Now, after saving the modified netlist, we need to run the ALIGN Layout Generator for our design Ring Oscillator using these commands:
    
    First go under this directory - /Desktop/vsd_3FADC/ALIGN-public
    and then, run the folowing commands which are given below: -
    ```
    source general/bin/activate
    cd work
    schematic2layout.py ../ALIGN-pdk-sky130/examples/opamp_as_comparator -p ../pdks/SKY130_PDK/
    ```
   4) After , running this command, the GDS and LEF file is generated under work directory of ALIGN-public directory .
   5) We will use klayout for observing the generated GDS and LEF file.
   6) And , also after this we need to open the .GDS file of Ring Oscillator which we get from ALIGN Tool in Magic also, for observing the Layout of Ring Oscillator.
       For opening the GDS file in magic , First open the Magic Tool with sky130 tech and then go to *File-->Read GDS -->Go to the file location          
       /home/vanshikatanwar/Desktop/vsd_3FADC/ALIGN-public/work* select *RING_OSC_0.python.gds* file and click on *Open* it. 
       Then, it opens up the layout of Ring oscilator in magic and press i so , that the whole layout is selected .
   7) Now , we need to extract the Spice Netlist from ALIGN Layout . For extrating the netlist , go to Tkcon window and write the following commands which are given below: -
        ```
        extract do local
        extract all
        ext2spice lvs
        ext2spice cthresh 0 rthresh 0
        ext2spice
        ```
   8) Now, modify the extracted netlist from ALIGN Layout means we need to modify that netlist which is just extracted from magic tool using above commands 
   9) Just copy and paste the content of xschem generated spice netlist into the above generated netlist . And after modifying save that netlist.
   10) Now, open the new terminal and open Ngspice in that terminal by executing this command "ngspice" the Ngspice terminal window opens up 
   11) Now, open your modified ring oscillator spice file uisng this command "*modified_RING_OSC.spice*" 
   12) Then, *run* execute this in Ngspice window itself.
   13)  After this *Plot Vout* run this command and then your waveform will be displayed in front of you.
   14)  Match the genrated waveform wih the waveform generated from xschem . If both waveform matches then, you can proceed to next step if not then, first solve
           the error and then move to further steps .
         
         
         ### Below are the Steps by steps process shown with SS of the steps which I have explained above: 
         
         Step 1 Modified Netlist of opamp as comparator for ALIGN TOOL Input
         ```
         .subckt opamp_as_comparator in1 in2 out vdd vss
         XM1 net1 in1 net3 net3 sky130_fd_pr__nfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
         XM2 net3 net4 vss vss sky130_fd_pr__nfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
         XM3 out net4 vss vss sky130_fd_pr__nfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
         XM4 net2 in2 net3 net3 sky130_fd_pr__nfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
         XM5 net4 net4 vss vss sky130_fd_pr__nfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
         XM6 net2 net1 vdd vdd sky130_fd_pr__pfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
         XM7 net1 net1 vdd vdd sky130_fd_pr__pfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
         XM8 out net2 vdd vdd sky130_fd_pr__pfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
         XM9 net4 net4 vdd vdd sky130_fd_pr__pfet_01v8 L=150e-09 W=10.5e-7 nf=2 m=1
         .ends opamp_as_comparator
         
         ```
          
          Step 2  Modified Netlist save
          
          Save the modified netlist under this *ALIGN-public/ALIGN-pdk-sky130/examples/opamp_as_comparator* directory with the name "*ring_osc.sp*".
          
          Step 3 Running the ALIGN Tool Generator for our design Opamp as a Comparator ADC
          
          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/224200899-0e58e40d-9eee-4055-af86-ccc603dd3efa.png">
          </p> 
          <p align="center">
                Fig 5  Running the ALIGN Tool Generator    
          </p>
          
          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/224201073-7c7d138d-138d-440b-8944-7d2aa95c3369.png">
          </p> 
          <p align="center">
                Fig 6  Running the ALIGN Tool Generator
          </p>
          
          Step 4 Generated GDS and LEF under work directory 
          
          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/224201341-f4cc957f-b20a-469c-8c02-e88764bad559.png">
          </p> 
          <p align="center">
                Fig 7  Generated GDS and LEF file under work directory
          </p>
          
          Step 5 Klayout Observation of GDS and LEF File
           
          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/224201512-032ebe0a-5876-4a63-9cf1-e9f856c185ab.png">
          </p> 
          <p align="center">
                Fig 8  .GDS file view in Klayout
          </p>
          
          
          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/224201639-7188840c-8ae7-4831-bcaf-d0696627d979.png">
          </p> 
          <p align="center">
                Fig 9  Back side .GDS design view in Klayout
          </p>
          
           <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/224201917-ea97e477-92dd-4b29-ae44-e402632f7a4b.png">
          </p> 
          <p align="center">
                Fig 9  .python.GDS file view in Klayout
          </p>
          
          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/224202060-2a5b9f1f-5cdf-49da-9b56-c5f9decc7f68.png">
          </p> 
          <p align="center">
                Fig 10  .LEF file view in Klayout
          </p>
          
          Step 6 Opening of Layout of Opamp as Comparator ADC .i.e., .gds file in Magic Tool
          
          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/224202407-400e3879-d4d8-406f-a85a-1420443f8c33.png">
          </p> 
          <p align="center">
                Fig 11  Opening of .GDS file view in Magic Tool
          </p> 
          
         Step 7 Extracting the netlist of gds file (layout of ring oscillator which opens in Magic Tool)
         
         <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/224202754-7bd925c5-c961-4b27-891f-0c35a2d8a0cd.png">
          </p> 
          <p align="center">
                Fig 13  Tkcon window view for extracting the Netlist 
          </p>
          
         Extracted Netlist from ALIGN Layout is shown below:-
          ```
           * NGSPICE file created from OPAMP_AS_COMPARATOR.ext - technology: sky130A

                                  .subckt OPAMP_AS_COMPARATOR
                                  X0 w_1032_1512# a_230_2352# a_230_2352# w_1032_1512# sky130_fd_pr__pfet_01v8 ad=0.147 pd=1.33 as=0.147 ps=1.33 w=1.05 l=0.15
                                  X1 a_746_2352# a_230_2352# w_1032_1512# w_1032_1512# sky130_fd_pr__pfet_01v8 ad=0.147 pd=1.33 as=0.147 ps=1.33 w=1.05 l=0.15
                                  X2 a_147_2352# a_716_561# a_147_2352# a_147_2352# sky130_fd_pr__nfet_01v8 ad=2.814 pd=26.36 as=0.147 ps=1.33 w=1.05 l=0.15
                                  X3 a_716_561# a_716_561# a_147_2352# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0.147 pd=1.33 as=0.147 ps=1.33 w=1.05 l=0.15
                                  X4 a_746_2352# a_716_2073# a_147_2352# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                                  X5 a_230_2352# a_230_2352# w_1032_1512# w_1032_1512# sky130_fd_pr__pfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                                  X6 a_230_2352# a_200_2073# a_147_2352# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                                  X7 a_147_2352# a_716_2073# a_746_2352# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                                  X8 a_147_2352# a_200_2073# a_230_2352# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                                  X9 a_147_2352# a_716_561# a_716_561# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                                  X10 w_1032_1512# a_230_2352# a_746_2352# w_1032_1512# sky130_fd_pr__pfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                                  X11 a_1434_840# a_746_2352# w_1032_1512# w_1032_1512# sky130_fd_pr__pfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                                  X12 w_1032_1512# a_746_2352# a_1434_840# w_1032_1512# sky130_fd_pr__pfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                                  X13 a_147_2352# a_716_561# a_1434_840# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                                  X14 a_1434_840# a_716_561# a_147_2352# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                                  X15 a_716_561# a_716_561# w_1032_1512# w_1032_1512# sky130_fd_pr__pfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                                  X16 a_147_2352# a_716_561# a_147_2352# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0.27825 ps=2.63 w=1.05 l=0.15
                                  X17 w_1032_1512# a_716_561# a_716_561# w_1032_1512# sky130_fd_pr__pfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                                  C0 a_1434_840# a_716_561# 0.23fF
                                  C1 w_1032_1512# a_716_561# 2.33fF
                                  C2 w_1032_1512# a_1434_840# 1.15fF
                                  C3 w_1032_1512# a_200_2073# 0.00fF
                                  C4 a_230_2352# a_746_2352# 0.67fF
                                  C5 a_716_2073# a_746_2352# 0.12fF
                                  C6 a_716_561# a_746_2352# 0.01fF
                                  C7 a_1434_840# a_746_2352# 0.10fF
                                  C8 w_1032_1512# a_746_2352# 2.70fF
                                  C9 a_200_2073# a_746_2352# 0.00fF
                                  C10 a_716_2073# a_230_2352# 0.06fF
                                  C11 a_230_2352# a_716_561# 0.01fF
                                  C12 a_716_2073# a_716_561# 0.01fF
                                  C13 a_230_2352# a_1434_840# 0.00fF
                                  C14 w_1032_1512# a_230_2352# 2.65fF
                                  C15 w_1032_1512# a_716_2073# 0.04fF
                                  C16 a_200_2073# a_230_2352# 0.12fF
                                  C17 a_200_2073# a_716_2073# 0.04fF
                                  C18 a_716_561# a_147_2352# 3.12fF
                                  C19 a_1434_840# a_147_2352# 0.37fF
                                  C20 a_746_2352# a_147_2352# 0.48fF
                                  C21 a_230_2352# a_147_2352# 1.15fF
                                  C22 a_716_2073# a_147_2352# 0.80fF
                                  C23 a_200_2073# a_147_2352# 0.82fF
                                  C24 w_1032_1512# a_147_2352# 7.65fF
                                  .ends
           ```
                                       
           
           Step 8 and Step 9 Modifying the extracted Netlist from ALIGN Layout and saving that modified netlist 
          
          Modified netlist is shown below:
          ```
          
                    * NGSPICE file created from OPAMP_AS_COMPARATOR.ext - technology: sky130A

                    ** sch_path: /home/vanshikatanwar/Desktop/Lab_1/xschem_lab/opamp_as_comparator.sch
                    **.subckt opamp_as_comparator
                    XM1 net1 in1 net3 net3 sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
                    + pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
                    + sa=0 sb=0 sd=0 mult=1 m=1
                    XM3 out net4 vss vss sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
                    + pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
                    + sa=0 sb=0 sd=0 mult=1 m=1
                    XM4 net2 in2 net3 net3 sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
                    + pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
                    + sa=0 sb=0 sd=0 mult=1 m=1
                    XM2 net3 net4 vss vss sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
                    + pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
                    + sa=0 sb=0 sd=0 mult=1 m=1
                    XM5 net4 net4 vss vss sky130_fd_pr__nfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
                    + pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
                    + sa=0 sb=0 sd=0 mult=1 m=1
                    XM6 net2 net1 vdd vdd sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
                    + pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
                    + sa=0 sb=0 sd=0 mult=1 m=1
                    XM7 net1 net1 vdd vdd sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
                    + pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
                    + sa=0 sb=0 sd=0 mult=1 m=1
                    XM8 out net2 vdd vdd sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
                    + pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
                    + sa=0 sb=0 sd=0 mult=1 m=1
                    XM9 net4 net4 vdd vdd sky130_fd_pr__pfet_01v8 L=0.15 W=1 nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29'
                    + pd='2*int((nf+1)/2) * (W/nf + 0.29)' ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W'
                    + sa=0 sb=0 sd=0 mult=1 m=1
                    V1 vdd GND 1.8
                    .save i(v1)
                    V2 vss GND 0
                    .save i(v2)
                    V3 in1 GND 1.2
                    .save i(v3)
                    V4 in2 GND sin(1.5 1.5 50MEG 0.5n)
                    .save i(v4)
                    ** begin user architecture code

                    .tran 4n 100n
                    .lib /usr/local/share/pdk/sky130A/libs.tech/ngspice/sky130.lib.spice tt
                    .save all


                    ** end user architecture code
                    **.ends
                    .GLOBAL GND
                    .end


                    .subckt OPAMP_AS_COMPARATOR
                    X0 w_1032_1512# a_230_2352# a_230_2352# w_1032_1512# sky130_fd_pr__pfet_01v8 ad=0.147 pd=1.33 as=0.147 ps=1.33 w=1.05 l=0.15
                    X1 a_746_2352# a_230_2352# w_1032_1512# w_1032_1512# sky130_fd_pr__pfet_01v8 ad=0.147 pd=1.33 as=0.147 ps=1.33 w=1.05 l=0.15
                    X2 a_147_2352# a_716_561# a_147_2352# a_147_2352# sky130_fd_pr__nfet_01v8 ad=2.814 pd=26.36 as=0.147 ps=1.33 w=1.05 l=0.15
                    X3 a_716_561# a_716_561# a_147_2352# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0.147 pd=1.33 as=0.147 ps=1.33 w=1.05 l=0.15
                    X4 a_746_2352# a_716_2073# a_147_2352# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                    X5 a_230_2352# a_230_2352# w_1032_1512# w_1032_1512# sky130_fd_pr__pfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                    X6 a_230_2352# a_200_2073# a_147_2352# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                    X7 a_147_2352# a_716_2073# a_746_2352# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                    X8 a_147_2352# a_200_2073# a_230_2352# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                    X9 a_147_2352# a_716_561# a_716_561# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                    X10 w_1032_1512# a_230_2352# a_746_2352# w_1032_1512# sky130_fd_pr__pfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                    X11 a_1434_840# a_746_2352# w_1032_1512# w_1032_1512# sky130_fd_pr__pfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                    X12 w_1032_1512# a_746_2352# a_1434_840# w_1032_1512# sky130_fd_pr__pfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                    X13 a_147_2352# a_716_561# a_1434_840# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                    X14 a_1434_840# a_716_561# a_147_2352# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                    X15 a_716_561# a_716_561# w_1032_1512# w_1032_1512# sky130_fd_pr__pfet_01v8 ad=0.147 pd=1.33 as=0.27825 ps=2.63 w=1.05 l=0.15
                    X16 a_147_2352# a_716_561# a_147_2352# a_147_2352# sky130_fd_pr__nfet_01v8 ad=0 pd=0 as=0.27825 ps=2.63 w=1.05 l=0.15
                    X17 w_1032_1512# a_716_561# a_716_561# w_1032_1512# sky130_fd_pr__pfet_01v8 ad=0.27825 pd=2.63 as=0.147 ps=1.33 w=1.05 l=0.15
                    C0 a_1434_840# a_716_561# 0.23fF
                    C1 w_1032_1512# a_716_561# 2.33fF
                    C2 w_1032_1512# a_1434_840# 1.15fF
                    C3 w_1032_1512# a_200_2073# 0.00fF
                    C4 a_230_2352# a_746_2352# 0.67fF
                    C5 a_716_2073# a_746_2352# 0.12fF
                    C6 a_716_561# a_746_2352# 0.01fF
                    C7 a_1434_840# a_746_2352# 0.10fF
                    C8 w_1032_1512# a_746_2352# 2.70fF
                    C9 a_200_2073# a_746_2352# 0.00fF
                    C10 a_716_2073# a_230_2352# 0.06fF
                    C11 a_230_2352# a_716_561# 0.01fF
                    C12 a_716_2073# a_716_561# 0.01fF
                    C13 a_230_2352# a_1434_840# 0.00fF
                    C14 w_1032_1512# a_230_2352# 2.65fF
                    C15 w_1032_1512# a_716_2073# 0.04fF
                    C16 a_200_2073# a_230_2352# 0.12fF
                    C17 a_200_2073# a_716_2073# 0.04fF
                    C18 a_716_561# a_147_2352# 3.12fF
                    C19 a_1434_840# a_147_2352# 0.37fF
                    C20 a_746_2352# a_147_2352# 0.48fF
                    C21 a_230_2352# a_147_2352# 1.15fF
                    C22 a_716_2073# a_147_2352# 0.80fF
                    C23 a_200_2073# a_147_2352# 0.82fF
                    C24 w_1032_1512# a_147_2352# 7.65fF
                    .ends
          ```
          
           Step 10, 11 and 12 execution of Spice File in Ngspice is shown below :-

          <p align="center">
          <img src="https://user-images.githubusercontent.com/90523478/224203617-2c0eb106-ac0e-40ec-a50e-82d4d34ee941.png">
          </p> 
          <p align="center">
                Fig 14  Modified Spice File execution  in Ngspice window  
          </p>

           Step 13 Output Waveform From Above POST Layout simulation using ALIGN Tool.
           <p align="center">
            <img src="https://user-images.githubusercontent.com/90523478/224203910-11d81e79-2cef-4438-9f8e-4763dba53e64.png">
             </p> 
            <p align="center">
             Fig 15  Output Waveform obtained from modified netlist from above Post Layout Simulation using ALIGN Tool  
             </p> 
            
            
          <p align="center">
            <img src="https://user-images.githubusercontent.com/90523478/224203790-7ed5a628-a846-4077-904b-ecb382c1f159.png">
            </p> 
            <p align="center">
             Fig 16  Combined Waveform obtained from modified netlist from above Post Layout Simulation using ALIGN Tool  
             </p>             
                        
                        
           ## Conclusion 
              
          The Pre-layout waveform and the Post Layout waveform of ADC are matching or both the waveform are same .
          
          
          
          ## Block Diagram of Analog Verilog Code Instantiation
          
           <p align="center">
            <img src="https://user-images.githubusercontent.com/90523478/224402451-82723f5f-0569-4d88-bef5-0157fa2ea0dc.png">
             </p>
              <p align="center">
             Fig 17 How the two analog block that is Ring Oscillator and ADC are connected with each other    
             </p> 
          
        ### Analog Verilog Code Instantiation of both analog circuit Ring Oscillator and Opamp as Comparator which is ADC 
        
                                                 module asynchronous_up_down_Inst
                                                 (
                                                 input in2,
                                                 input vdd,
                                                 input vss,

                                                 output out,
                                                 );

                                                 wire Vout_ADC_in1;


                                                 Ring_Osc RO(.VDD(vdd),
                                                             .VSS(vss),
                                                             .VOUT(Vout_ADC_in1));

                                                 one_Bit_ADC opampADC(.INP1(Vout_ADC_in1),
                                                                      .INP2(in2),
                                                                      .vdd(vdd),
                                                                      .VSS(vss),
                                                                      .OUT(out));
                                                 endmodule
                                                 
                                                 
  ## Analog Verilog Code of Ring Osci
  
  module Ring_Osc (vdd,gnd,Vout);
input vdd;
input gnd;
output Vout;
endmodule


## Analog Verilog Code of ADC

module one_Bit_ADC opampADC(vdd,vdd,in1,in2,out);
     input vdd;
     input vss;
     input in1;
     input in2;
     output out;
endmodule

