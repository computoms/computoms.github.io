---
layout: post
title:  "Data storage: persistent storage"
date:   2019-08-12 14:00:00 +0200
categories: storage
---

{% include figure.html image="images/posts/06_Hard-drive.jpg" caption="Image by blickpixel from Pixabay" %}

Persistent storage are used in computer to store information for a long time. Files, pictures, videos should be stored in a persistent manner such that it is not lost when the computer is powered down. Here I will explain briefly what are the two major persistent storages used in computers: _magnetic hard drives_ and _flash memories_ or _solid state drives_. 

## Storing magnets: the hard drive

The interesting property of ferromagnetic materials, which are used to make permanent magnets, is we can actually _change_ their permant magnetic field orientation by applying a large magnetic field on them to force the orientation of the magnetic orientations inside the material. 

Let's imaging we can arrange on a line a series of ferromagnets separated by some distance. Let's align their magnetic fields in the same direction. Now, take a strong magnetic field generator, say a strong electro-magnet. If we want to encode information into our system, we can approach the electro-magnet to the ferromagnets representing positions where we want to encode bit 1 and switch it on to change the orientation of these magnets while keeping the others to the initial orientation (representing bit 0).

This is the idea behind a magnetic hard drive. In reality, the ferromagnets are tiny regions of a coating ferromagnetic material that is spread over a circular disk, called a platter. This disk rotates around its center at a given speed, usually around 5000 rotations per minute. A fixed reading head is placed just above the surface of the disk and reads the data while the disk is rotating. An electronic controller converts the requests from the computer in order to move the read/write head for reading/writing the correct portion of information.

Magnetic hard drives are still the predominant form of mass storage on computers and servers. It is the cheapest of the persistent memories per gigabyte of storage. Nevertheless, due to the mechanical parts that have to move inside the hard disk drive to place the head at the correct locations, these drives are slower than flash / SSD. 

## Flash memories and Solid State Drives

### The flash memory

The flash memory is a kind of memory that is faster and has a smaller form factor than magnetic drives. Its principle of operation is basically based on the DRAM (ref [article on the Random Access Memories]({{site.url}}/data-storage/2019/07/23/data-storage-random-access-memories/)) but with different electronic components; that allows it to be persistent (without the need of a refresh mechanism).

The electronic component that forms the basis of a flash memory is called a *Floating gate transistor* (FG Transistor). It is a MOSFET transistor (see [article on the electronic components]({{site.url}}/data-storage/2019/04/30/electronic-components/)) with the MOS structure -- that contains the gate of the transistor -- modified. Instead of having the three-layer structure metal-oxide-semiconductor; we have a five-layer structure: metal-oxide-metal-oxide-semiconductor (MOMOS). The structure is represented in the following image.

{% include figure.html image="images/posts/06_Floating-Gate-Transistor.png" caption="Floating-gate transistor composition" %}

The middle part is composed of a metallic gate, that is stacked over an insulator (usually, an oxide such as silicon oxide) on top of a second metallic part -- called the floating-gate -- on top of another insulator layer of a slightly different thickness which in turn is placed over the semiconductor substrate that form the backbone of the transistor.

### Principle of operation

The FG transistor works a bit like a capacitor: its floating gate part can be electrically charged or discharged. Basically, when the floating gate of the transistor is charged, the transistor is passing -- it lets the current flow from its source to drain terminals. When the floating gate is not charged, it is blocking. This way, we can encode bit 1 (FG charged) or 0 (FG discharged). 

But, if the principle is similar to the capacitor, why do capacitors inside DRAMs loose their charge after a while and need a refresh mechanism whereas FG transistors do not?

The answer lies in the physical principle that is at play in a floating-gate transistor.

### Physical principle

The FG transistor is different from a capacitor: the electrons that are stored in the floating gate are forced into this area using a different physical principle than when charging a capacitor. 

When charging a capacitor, you typically apply a voltage between its terminals in order to move electrons from one plate to the other. Electrons are flowing through metallic plates and metallic wires -- conductive materials. 

To charge the floating-gate of a FG transistor, you apply a large voltage on its *gate* terminal while also applying a voltage on its source terminal. While a large voltage on the gate of the transistor opens its channel so that electrons can flow from source to drain, it also produces an electric field inside the MOMOS structure so that electrons are attracted to the gate terminal. Because of the oxide layers -- that are electrically insulating materials -- electrons cannot flow from source to gate. But if the voltage is large enough, and the oxide layer is thin enough, a physical phenomenon can occur that allows electrons to *jump* from the semiconductor to the metal of the floating-gate -- passing through the oxide layer. This phenomenon is called **quantum tunnelling**. 

When some electrons were able to jump from the semiconductor into the floating-gate, and we remove the voltages, they have no more the possibility to jump back to the semiconductor, because no more "large" voltage is applied. They stay here forever. That is what makes the Flash memories persistent. 

### Flash memory architecture

The flash memories combine many of these FG transistors into arrays, in a similar way as in random access memories. Different layouts exist, but the two main layouts are called *NOR Flash* and *NAND Flash*.

In a memory, such as SRAM, DRAM or flash, we usually use two electronic lines to read or write the data at a specific location. These two lines are called the *bit line* and the *word line*. When we have an array of memory cells, each column corresponds to a word line and each row of the array corresponds to a bit line. To read the content of a specific cell, we just apply or read the voltage/current between the corresponding word and bit lines.

The NOR flash design connects one end of all cells to the ground while the other end is connected to a bit line. The word line is connected on the control gates of the FG transistors. This creates an array of structures that resembles a NOR gate (for Not-OR, see [article on the electronic components]({{site.url}}/data-storage/2019/04/30/electronic-components/)).

The NAND flash design connects all the FG transistors in series, such that the bit line voltage will be low only if all the word lines (connected to the control gates) are high at the same time (which resembles the way NAND gates operate).

### Reading / Writing

Flash memories have a surprising property when it comes to writing data. In a flash memory, you can read the data, write a single bit from bit 1 to bit 0, but you cannot write a single bit from bit 0 to bit 1; due to the architecture that connects the flash cells together. This process is called earsing, and is only possible by doing it on an entire block of memory, usually consisting of some kilobytes to megabytes of size. 

One of their disadvantages is also wear. A single FG transistor wears out after between 10,000 and 1 million read/write operations. This problem is partially solved by using controllers that use the full available storage when writing data so that single cells do not wear out too quickly. 

### Solid State Drives

Solid State Drives (SSDs) are usually a packaged form of NAND flash memories with correct controllers and connectors to replace the standard magnetic hard drives. They are more and more used to replace magnetic drives in computers because of their fast read/write capabilities, even though they stay more expansive per gigabyte. 

## Summary

Through this article we saw the two main principles behind persistent storage in a computer; magnetic hard drives and flash memories. Despite some disadvantages, such as the wearing and cost of flash memory based storages; it is becoming the main storage for laptop and desktop computers thanks to its improved read/write speed compared to magnetic disks. 