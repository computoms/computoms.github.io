---
layout: post
title:  "Data storage: electronic components"
date:   "2019-04-30 14:00:00 +0200"
categories: [Data Storage]
published: true
permalink: /data-storage/2019/04/30/electronic-components/
---

{% include figure.html image="images/posts/04_Electronic-circuit.jpg" caption="Image by axonite from Pixabay" %}

Electronic components form the basis of computers and how data is processed and stored. Here are a few of the most used electronic components.

## Transistors

The transistor is the most important electronic component for electronics and computers. It forms the basis of almost all logic operations on data and is also used for storing data (for example, in SRAM memories).

A transistor is basically a 3 (or sometimes 4) terminal device that acts as an electronic switch. It has an input, output and a control terminal. It acts as a switch, so that in one "position" no electric current can flow from input to output terminals and in the other "position" a current can freely flow from input to output. The "position" of the switch is actually determined by the voltage (i.e. charge) applied on the control terminal.  

### MOSFET transistors

The typical implementation of a transistor for computer and logic operations is the so-called MOSFET transistor (Metal Oxide Semiconductor Field Effect Transistor). These are using the properties of semiconductor materials to implement the switch behavior by stacking 3 different materials:
* A semiconductor (typically silicon)
* An oxide (typically Silicon oxide for large technologies)
* A metal on top

This stack of materials gives part of the name to the transistor (the MOS part). 

{% include figure.html image="images/posts/04_Mosfet.png" caption="MOSFET transistor composition" %}

The three terminals of a MOSFET transistor are usually called the Drain and Source (for input/output terminals) and the Gate terminal, that acts as the switch control. When a given voltage (which value is given by transistor intrisic characteristics) is applied on the gate, the Source/Drain connection becomes like a wire. The fourth connection on the image above (Body) is not necessary in most of the cases and is usually wired to the source. The n+ and p corresponds to the doping type of the semiconductor, which will determine the type of the transistor (see below MOSFET types). 

#### MOSFET types

There exists two main types of MOSFET transistors that we call n-type and p-type MOSFETs. Without going into the details of why we call them like this, the main difference is that a n-type MOSFET will let the current flow from Drain to Source only when a **positive** voltage is applied on its gate. The p-type will do so only when a **negative** voltage is applied on its gate (with respect to the source terminal voltage). 

In electronics we usually represent devices with symbols. Here are the symbols for the nMOSFET and pMOSFET transistors.

{% include figure.html image="images/posts/04_nMOS.png" caption="nMOSFET symbol" %}
{% include figure.html image="images/posts/04_pMOS.png" caption="pMOSFET symbol" %}

The _p_ and _n_ letters corresponds to the doping of the semiconductor, such as Silicon, used for these devices. Implanting atoms that have more electrons (_n_ type) or less electrons (_p_ type) than Silicon allows to modify the electrical properties of the semiconductor. See [the Wikipedia article on semiconductor doping](https://en.wikipedia.org/wiki/Doping_(semiconductor)) and [the Wikipedia article on MOSFETs](https://en.wikipedia.org/wiki/MOSFET) for more information. 

### Logic circuits

Using only transistors, we can already implement data processing using logic operations. Let's look at several examples of implementation of logic operations using transistors. 

Electronics uses mainly the charge storage for processing data. As you probably know, data is stored and processed in binary numbers in computers and electronic circuits. Then a given charge (for example, 5 volts) will indicate a high signal (corresponding to bit 1) and a zero charge will indicate a low-signal (bit 0). So, in logic electronic circuits we usually have a high-signal voltage source, often called Vdd (usually corresponding to 5V) and a low-signal voltage source, often called Vss (usually corresponding to 0V).

The logic circuits that are implemented using n-type and p-type MOS transistors are called Complementary Metal Oxide Semiconductor logic circuits (CMOS logic).

#### Inverter gate (NOT)

An inverter is a simple electronic component, part of the _logic gate_ family of components, that inverts a signal. If we have a high-signal on one side of this component (bit 1, or 5V) we'll have a low-signal on the output (bit 0, 0V). 

Connecting two MOSFET transistors of the different types in a row between Vdd and Vss (as shown below), and connecting the two gates of the transistors together as the input of the component, we'll have the output that inverts the signal. Inputting a positive voltage (Vdd), the pMOS transistor will be blocking, preventing current to flow from the upper Vdd to the output, but the nMOS transistor will be passing, making the output signal at the level of Vss. Conversely, inputting a 0 voltage (Vss), the pMOS will be passing (because the voltage on the gate will be negative with respect to the source, which is at Vdd) making the output signal to Vdd and the nMOS will be blocking. 

{% include figure.html image="images/posts/04_NOT-Gate.png" caption="NOT Gate implementation with CMOS" %}


#### OR and AND gates

Similarly, we can create gates to implement the logical OR and AND operators. It gets a bit more complicated. Here is the OR gate

{% include figure.html image="images/posts/04_OR-Gate.png" caption="OR Gate implementation with CMOS technology." %}

We remark that the last piece on the right is an inverter (NOT gate) as described above. Inputting a high-signal on either A or B or both of them will activate the bottom nMOS transistors which will drain the low-signal from Vss to the inverter gate, while one of the pMOS transistors will be in a blocking state because of the one high-signal on either A or B. The inverter will invert the signal to the high-signal (Vdd). The only way to have a low-signal at the end of this circuit is to input low-signal on both A and B. This is thus the definition of the OR operator. 

On this gate, the two nMOS transistors of the left part are in parallel (that is, each one is connected so that the signal at the output of the pair of transistor is Vss only if one of them is passing). The pMOS transistors are connected in series; such that the output depends on the state of both transistors. 

To design the AND gate, we can take the circuit above and reverse the order in which pMOS and nMOS are connected together: make the pMOS in parallel and the nMOS in series. This way, the only possible option to have a high-signal at the output Q is to have both A and B at 1. Other inputs give a low-signal at the output. 


## Capacitors

A capacitor is a pair of metal plates that is used to store electric charge. The metal plates are separated by an oxide and are usually rolled together in a cylinder to gain space. It acts similarly to a battery, can be charged and discharged. But unlike batteries which use a chemical reaction to store electrical energy, the capacitor directly uses the electrons and keeps them on one of the metal plates while the other one is depleted (electrons are removed).

Here is its schematic symbol

{% include figure.html image="images/posts/04_Capacitor.png" caption="Capactior symbol." %}

One of its advantages is that it can be charged and discharged very fast; as compared for example to a battery. 

## Summary

Here are the two major electronic components used in data processing and storage, the _transistor_ and the _capacitor_. 
Logic operations can be implemented using MOSFET transistors, such as NOT, AND and OR operations. They can also be used for data storage, as we will see in the future. The capacitor is used to store a charge and is used in data storage, as we will see in the next post.


