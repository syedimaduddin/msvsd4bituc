module msvsd4bituc(
    input INN,
    output OUT
);

wire ring_adc;

RING_OSCILLATOR RING_OSCILLATOR (
    .INP(ring_adc)
);

ADC_1BIT ADC_1BIT (
    .OUT(OUT),
    .INN(INN),
    .INP(ring_adc)
);

endmodule
