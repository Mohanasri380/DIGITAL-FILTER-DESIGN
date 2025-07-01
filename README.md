# DIGITAL-FILTER-DESIGN

COMPANY:CODTECH IT SOLUTIONS

NAME:KUMMITHA MOHANA SRI

INTERN ID:CT08DL279

DOMAIN:VLSI

DURATION:8 WEEKS

MENTOR:NEELA SANTHOSH KUMAR

#DESCRIPTION 

This project implements a 4-tap Finite Impulse Response (FIR) filter using Verilog HDL. The filter takes an 8-bit input signal and applies a fixed coefficient convolution to produce a 16-bit filtered output. The design includes both the FIR filter module and a testbench for functional verification using Vivado.


#Tools Used

Vivado 2024.2
Verilog HDL


#FIR Filter Specifications

Parameter	Value

Filter Type	FIR (4-tap)
Data Width	8-bit input, 16-bit output
Coefficients	{4, 3, 2, 1}
Clock Trigger	Positive edge
Reset	Active-high synchronous


The FIR filter implements the following equation:

y[n] = h[0] \cdot x[n] + h[1] \cdot x[n-1] + h[2] \cdot x[n-2] + h[3] \cdot x[n-3]

With coefficients:

h[0] = 4, h[1] = 3, h[2] = 2, h[3] = 1


#Simulation Behavior

Sample input applied to the filter:

x_in = {1, 2, 3, 4, 5, 6}

#Corresponding FIR output values:

Time (ns)	x_in	y_out (FIR Output)

10	1	0
20	2	0
30	3	0
40	4	20
50	5	30
60	6	40

✅ Outcome

