---
layout: post
title:  "Data storage: persistent storage"
date:   2019-08-06 14:00:00 +0200
categories: storage
published: false
---

{% include figure.html image="images/posts/06_Hard-drive.jpg" caption="Image by blickpixel from Pixabay" %}

Persistent storage are used in computer to store information for a long time. Files, pictures, videos should be stored in a persistent manner such that it is not lost when the computer is powered down. Here I will explain briefly what are the three major persistent storages used in computers: _magnetic hard drives_, _flash memories_ and the _solid state drives_. 

## Storing magnets: the hard drive

The interesting property of ferromagnetic materials, which are used to make permanent magnets, is we can actually _change_ their permant magnetic field orientation by applying a large magnetic field on them to force the orientation of the magnetic orientations inside the material. 

Let's imaging we can arrange on a line a series of ferromagnets separated by some distance. Let's align their magnetic fields in the same direction. Now, take a strong magnetic field generator, say a strong electro-magnet. If we want to encode information into our system, we can approach the electro-magnet to the ferromagnets representing positions where we want to encode bit 1 and switch it on to chage the orientation of these magnets while keeping the others to the initial orientation (representing bit 0).

	Show image of the principle

This is the idea behind a magnetic hard drive. In reality, the ferromagnets are tiny regions of a coating ferromagnetic material that is spread over a circular disk, called a platter. This disk rotates around its center at a given speed, usually around 5000 rotations per minute. A fixed reading head is placed just above the surface of the disk and reads the data while the disk is rotating. An electronic controller converts the requests from the computer in order to move the read/write head for reading/writing the correct portion of information.

The magnetic hard drive are still the predominant form of mass storage on computers and servers. It is the cheapest of the persistent memories per gigabyte of storage. Due to the mechanical parts that have to move inside the hard disk drive to place the head at the correct locations, these drives are slower than the two following ones, though. 

## Flash memories

The flash memory is a kind of memory that is faster and has a smaller form factor than magnetic drives. Its principle of operation is basically based on the DRAM (ref [article on the Random Access Memories]({{site.url}}/data-storage/2019/07/23/data-storage-random-access-memories/)) but with different electronic components; that allows it to be persistent (without the need of a refresh mechanism).

The electronic component that forms the basis of a flash memory is called a *Floating gate transistor* (FG Transistor). It is a MOSFET transistor (see [article on the electronic components]({{site.url}}/data-storage/2019/04/30/electronic-components/)) with the MOS structure -- that contains the gate of the transistor -- modified. Instead of having the three-layer structure metal-oxide-semiconductor; we have a five-layer structure: metal-oxide-metal-oxide-semiconductor (MOMOS). The structure is represented in the following image.

{% include figure.html image="images/posts/06_Floating-Gate-Transistor.png" caption="Floating-gate transistor composition" %}

The middle part is composed of a metallic gate, that is stacked over an insulator (usually, an oxide such as silicon oxide) on top of a second metallic part -- called the floating-gate -- on top of another insulator layer of a slightly different thickness which in turn is placed over the semiconductor substrate that form the backbone of transistors. 

**Principle of operation**

The FG transistor works a bit like a capacitor: its floating gate part can be electrically charged or discharged. Basically, when the floating gate of the transistor is charged, the transistor is passing -- it lets the current flow from its source to drain terminals. When the floating gate is not charged, it is blocking. This way, bit 1 or 0 are repsectively encoded using these transistors. 

But, if the principle is similar to the capacitor, why do capacitors inside DRAMs loose their charge after a while and need a refresh mechanism whereas FG transistors do not?

The answer lies in the physical principle that is at play in a floating-gate transistor.

**Physical principle**

The FG transistor is different from a transistor coupled with a capacitor: the electrons that are stored in the floating gate are forced into this area using a different physical principle than when charging a capacitor. 

When charging a capacitor, you typically apply a voltage between its terminals in order to move electrons from one plate to the other. Electrons are flowing through metallic plates and metallic wires -- conductive materials. 

To charge the floating-gate of a FG transistor, you apply a large voltage on its *gate* terminal while also applying a voltage on its source terminal. While a large voltage on the gate of the transistor opens its channel so that electrons can flow from source to drain, it also produces an electric field inside the MOMOS structure so that electrons are attracted to the gate terminal. Because of the oxide layers -- that are electrically insulating materials -- electrons cannot flow from source to gate. But if the voltage is large enough, and the oxide layer is thin enough, a physical phenomenon can occur that allows electrons to *jump* from the semiconductor to the metal of the floating-gate -- passing through the oxide layer. This phenomenon is called **quantum tunnelling**. 

When some electrons were able to jump from the semiconductor into the floating-gate, and we remove the voltages, they have to more the possibility to jump back to the semiconductor, because no more "large" voltage is applied. They stay here forever. That is what makes the Flash memories persistent. 

**Flash memory structure**

The flash memories combine many of these FG transistors into arrays, in a similar way as in random access memories. Different layouts exist, but the principle is stays the same.


## Solid State Drives

