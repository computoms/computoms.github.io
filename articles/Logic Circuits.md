{
	"Title": "Logic Circuits",
	"Abstract": "Or how to make logic operations with electrical components and signals.", 
	"Parents": ["Computer Memories","SSD"], 
	"Children": ["NOT Gate","AND Gate","OR Gate","MOSFET Transistors"],
	"Date": "2020-07-06"
}

Using only transistors, we can already implement data processing using logic operations. Let's look at several examples of implementation of logic operations using transistors. 

Electronics uses mainly the charge storage for processing data. As you probably know, data is stored and processed in binary numbers in computers and electronic circuits. Then a given charge (for example, 5 volts) will indicate a high signal (corresponding to bit 1) and a zero charge will indicate a low-signal (bit 0). So, in logic electronic circuits we usually have a high-signal voltage source, often called Vdd (usually corresponding to 5V) and a low-signal voltage source, often called Vss (usually corresponding to 0V).

It is important to note that we usually try to reduce the energy loss in an electronic circuit (for example, to save battery life of a laptop computer). This means, we need to reduce the power dissipations which highly depend on the current that flows in the circuit. In logic parts of an electronic chip, the voltages (Vdd and Vss) are used to represent binary signals and only the voltage values will play a role in the logic (not the currents).

The logic circuits that are implemented using n-type and p-type MOS transistors are called Complementary Metal Oxide Semiconductor logic circuits (CMOS logic), see <a href="MOSFET Transistors.html">MOSFET Transistors</a>.