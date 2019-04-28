---
layout: post
title:  "Data storage: electronic components"
date:   2019-05-01 14:00:00 +0200
categories: storage
published: true
---


{% include figure.html image="images/posts/04_Electronic-circuit.jpg" caption="Image by axonite from Pixabay" %}

Electronic components form the basis of computers and how data is processed and stored. Here are a few of the most used electronic components.

## Transistors

The transistor is the most important electronic component for electronics and computers. It forms the basis of almost all logic operations on data and is also used for storing data (for example, in SRAM memories).

A transistor is basically a 3 (or sometimes 4) terminal device that acts as an electronic switch. It has an input, output and a control terminal. It acts as a switch, so that in one "position" no electric current can flow from input to output terminals and in the other "position" a current can freely flow from input to output. The "position" of the switch is actually determined by the voltage (i.e. charge) applied on the control terminal.  

### MOSFET transistors

The typical implementation of a transistor for computer and logic operations are the so-called MOSFET transistors (Metal Oxide Semiconductor Field Effect Transistor). These are using the properties of semiconductor materials to implement the switch behavior by stacking 3 different materials:
* A semiconductor (typically silicon)
* An oxide (typically Silicon oxide for large technologies)
* A metal on top

This stack of materials gives part of the name to the transistor (the MOS part). 

> Image of a MOSFET transistor

The three terminals of a MOSFET transistor are usually called the Drain and Source (for input/output terminals) and the Gate terminal, that acts as the switch control. When a voltage (which value is given by transistor intrisic characteristics) is applied on the gate, the Source/Drain connection becomes like a wire.

> Show image of schematic of nMOS and pMOS transistors

#### MOSFET types

There exists two main types of MOSFET transistors that we call n-type and p-type MOSFETs. Without going into the details of why we call them like this, the main difference is that a n-type MOSFET will let the current flow from Drain to Source only when a positive voltage is applied on its gate. The p-type will do so only when a negative voltage is applied on its gate (with respect to the source terminal voltage). 

### Logic circuits

Using only transistors, we can already implement data processing using logic operations. Let's look at several examples of implementation of logic operations using transistors. 

Electronics uses mainly the charge storage for processing data. As you probably know, data is stored and processed in binary numbers in computers and electronic circuits. Then a gien charge (for example, 5 volts) will indicate a high signal (corresponding to bit 1) and a zero charge will indicate a low-signal (bit 0). So, in logic electronic circuits we usually have a high-signal voltage source, often called Vdd (usually corresponding to 5V) and a low-signal voltage source, often called Vss (usually corresponding to 0V).

The logic circuits that are implemented using n-type and p-type MOS transistors is called the Complementary Metal Oxide Semiconductor logic (CMOS logic).

#### Inverter gate

An inverter is a simple electronic component, part of the _logic gate_ family of components, that inverts a signal. If we have a high-signal on one side of this component (bit 1, or 5V) we'll have a low-signal on the output (bit 0, 0V). 

Connecting two MOSFET transistors of the different types in a row between Vdd and Vss (as shown below), and connecting the two gates of the transistors together as the input of the component, we'll have the output that inverts the signal. Inputting a positive voltage (Vdd), the pMOS transistor will be blocking, preventing current to flow from the upper Vdd to the output, but the nMOS transistor will be passing, making the output signal at the level of Vss. Conversely, inputting a 0 voltage (Vss), the pMOS will be passing (because the voltage on the gate will be negative with respect to the source, which is at Vdd) making the output signal to Vdd and the nMOS will be blocking. 

> Show image of inverter schematic


#### NOT gate



#### AND and OR gates


## Capacitors


