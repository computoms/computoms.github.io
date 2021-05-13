{
    "Title": "SRAM Cell",
    "Abstract": "A super-fast digital memory that needs power.",
    "Parents": ["Processor Cache Memories"],
    "Children": ["MOSFET Transistors"],
    "Date": "2021-05-10"
}

The Static Random Access Memory (SRAM) is the main memory used as cache memory in processors. Its fundamental building block is composed of 6 transistors, that are connected to form 2 logic inverters (using 4 transistors) and 2 control transistors allowing to access the data for reading and writing. Below is the electrical schematic representing an SRAM cell.

<table class="w3-center" width="100%">
	<tr><th>
		<img src="images/articles/SRAM.svg" class="w3-center" width="90%" />
	</th></tr>
</table>

Its working principle is easier to understand if we separate the different components. First, the M5 and M6 transistors are used to read/write the SRAM cell value (see below schematics). When a sufficient voltage is present on the WL line (called the "Word Line"), it opens the M5 and M6 transistors such that the signal on BL-bar line is the Q-bar signal and the signal on the BL line is the Q signal.

<table class="w3-center" width="100%">
	<tr><th>
		<img src="images/articles/SRAM-Read-Write-Transistors.svg" class="w3-center" width="90%" />
	</th></tr>
</table>

Q is the signal that corresponds to the SRAM cell state (0 or 1), and Q-bar is the opposite (1 or 0). If the value stored (Q) is 1, the BL line will be used to read the SRAM cell value (1), and BL-bar line will be used to check that we are correctly reading the value (should be 0 on this line). Conversely, if the value Q is 0, it'll be read on the BL line and should be 1 on the BL-bar line.

Now, on the internal structure of the SRAM are 4 transistors that are arranged to form two inverters in a loop: the output of the first one is fed into the input of the second and vice-versa. Here is the schematics of the internal cell part (left) that is decomposed into the two inverters (right):

<table class="w3-center" width="100%">
	<tr><th>
		<img src="images/articles/SRAM-Inverters.svg" class="w3-center" width="90%" />
	</th></tr>
</table>

The inverter is presented in the article about the <a href="NOT Gate.html">Not Gate</a>.

To write a bit into the memory cell, the couple of inverters are forced into a state, either with <M1, M2> inverter output to high or low, by applying a slightly higher voltage that would normally be used for these components. Once the state has been written, it can be read by opening the transistors M5 and M6 and reading the lines BL and BL bar. 

As opposed to the DRAM memory, SRAM do not need any refresh mechanism as long as the power is maintained in the circuit. When the inverters are in a given state, it will stay as long as the power is maintained: when the output of the first inverter is high, the input of the second inverter is high, which generates a low-signal at its output. This low-signal is directed again to the input of the first inverter. 

This memory is more expansive and faster, so it is usually not used as the main memory of computers but rather as the processor cache memory.