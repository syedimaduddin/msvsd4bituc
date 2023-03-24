/* Generated by Yosys 0.26+39 (git sha1 f0116330b, clang 10.0.0-4ubuntu1 -fPIC -Os) */

module msvsd4bituc(VDD, VSS, INN, OUT);
  input INN;
  wire INN;
  output OUT;
  wire OUT;
  input VDD;
  wire VDD;
  input VSS;
  wire VSS;
  wire ring_adc;
  ADC_1BIT ADC_1BIT (
    .INN(INN),
    .INP(ring_adc),
    .OUT(OUT)
  );
  RING_OSCILLATOR RING_OSCILLATOR (
    .INP(ring_adc)
  );
endmodule