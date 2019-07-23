---
layout: post
title:  "Data storage: Random Access Memories"
date:   "2019-07-23 14:00:00 +0200"
categories: storage
published: true
---

{% include figure.html image="images/posts/05_DRAM-Image.jpg" caption="Image by PublicDomainPictures from Pixabay" %}

A random access memory is a type of memory where each single information can be access (read / written) in a constant amount of time. No matter if the information is stored at the start, middle or end of the memory. This is achieved using a multiplexer that allows to address single specific memory bits.


## Dynamic Random Access Memory (DRAM)

The DRAM is the main memory used as a working memory in computers. The fundamental building block of a DRAM is composed of a transistor -- that allows addressing the bit for reading / writting -- and a capacitor -- that stores the information. Its electrical schematic is shown below.

{% include figure.html image="images/posts/05_DRAM-Cell.png" caption="DRAM Cell." %}

This consists of what is called a memory cell. These memory cells are usually arragned in a rectangle that can go to thousands of cells in width and height.

Due to inherant characteristics of capacitors, these devices are prone to electrical leakage and easily discharge over time. This has to be compensated by constantly re-writing the data stored in a DRAM. This is usually done every tenth of miliseconds (see the [JEDEC standard](https://www.jedec.org)). 

When starting a program on a computer, the operating system loads the entier program instructions from the hard drive into the DRAM memory. It is then executed from this memory and into the processor, transiting by the processor's cache memory. 

## Static Random Access Memory (SRAM)

The SRAM is the main memory used as cache memory in processors. Its fundamental building block is composed of 6 transistors, that are connected to form 2 logic inverters (using 4 transistors) and 2 control transistors allowing to access the data for reading and writing. Below is the electrical schematic representing an SRAM cell.

{% include figure.html image="images/posts/05_SRAM-Cell.png" caption="SRAM Cell." %}

M1, M2 and M3, M4 are the transistors that form the two inverters. M5 and M6 are the control transistors. 

As opposed to the DRAM memory, SRAM do not need any refresh mechanism as long as the power is maintained in the circuit. When the inverters are in a given state, it will stay as long as the power is maintained: when the output of the first inverter is high, the input of the second inverter is high, which generates a low-signal at its output. This low-signal is directed again to the input of the first inverter. 

This memory is more expansive and faster, so it is usually not used as the main memory of computers but rather as the processor cache memroy. 

## Summary

This short post presents the specificities and electrical implementations of the two main types of random access memories used for computer main memory and process caches (ref [article on the overview of computer memories]({{site.url}}/storage/2019/03/31/Data-storage/)).
