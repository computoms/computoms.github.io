# 1. The most common computer hardware components

[TOC]

## 1.1. Memories

In a computer, there are three categories of hardware components that can store data. These categories each have their own characteristics and are used for different steps of data transfer, storage and processing.

Computer memories can thus be divided into:

* **Hard drives**, storing data persistently. The data written to them are saved even in case of power outage.
* **Random-access memories**, storing data of programs running on a computer. These kind of memories are not resistant to power outages.
* **Processor cache memories**, storing transitting data to the processor.

### 1.1.1. Hard drives

Hard drives are non-volatile data storage. This means that data remains unchanged when power is turned off. It is usually the cheapest and biggest memory in a computer, and is where you typically save your files, photos and other data you want to keep. One of the disadvantage of this type of memory is that it is usually slow (mostly due to hardware implementation).

The two main hard drive implementations are:

* Magnetic drives
* Flash drives, also called Solid State Drives


#### 1.1.1.1. Magnetic drives

The interesting property of ferromagnetic materials, which are used to make permanent magnets, is we can actually change their permant magnetic field orientation by applying a large magnetic field on them to force the orientation of the magnetic orientations inside the material.

Let's imaging we can arrange on a line a series of ferromagnets separated by some distance. Let's align their magnetic fields in the same direction. Now, take a strong magnetic field generator, say a strong electro-magnet. If we want to encode information into our system, we can approach the electro-magnet to the ferromagnets representing positions where we want to encode bit 1 and switch it on to change the orientation of these magnets while keeping the others to the initial orientation (representing bit 0).

This is the idea behind a magnetic hard drive. In reality, the ferromagnets are tiny regions of a coating ferromagnetic material that is spread over a circular disk, called a platter. This disk rotates around its center at a given speed, usually around 5000 rotations per minute. A fixed reading head is placed just above the surface of the disk and reads the data while the disk is rotating. An electronic controller converts the requests from the computer in order to move the read /write head for reading / writing the correct portion of information.

Magnetic hard drives are still the predominant form of mass storage on computers and servers. It is the cheapest of the persistent memories per gigabyte of storage. Nevertheless, due to the mechanical parts that have to move inside the hard disk drive to place the head at the correct locations, these drives are slower than flash / SSDs.

#### 1.1.1.2. Flash drives

The flash memory is a kind of memory that is faster and has a smaller form factor than magnetic drives. Its principle of operation is basically based on the [DRAM](electronics.html) but with different electronic components; that allows it to be persistent (without the need of a refresh mechanism): the [floating-gate (FG) transistors](electronics.html#14-floating-gate-transistors).

##### 1.1.1.2.1. Architecture

The flash memories combine many of these FG transistors into arrays, in a similar way as in random access memories. Different layouts exist, but the two main layouts are called *NOR Flash* and *NAND Flash*.

In a memory, such as SRAM, DRAM or flash, we usually use two electronic lines to read or write the data at a specific location. These two lines are called the *bit line* and the *word line*. When we have an array of memory cells, each column corresponds to a word line and each row of the array corresponds to a bit line. To read the content of a specific cell, we just apply or read the voltage/current between the corresponding word and bit lines.

The NOR flash design connects one end of all cells to the ground while the other end is connected to a bit line. The word line is connected on the control gates of the FG transistors. This creates an array of structures that resembles a NOR gate (for Not-OR).

The NAND flash design connects all the FG transistors in series, such that the bit line voltage will be low only if all the word lines (connected to the control gates) are high at the same time (which resembles the way NAND gates operate).

##### 1.1.1.2.2. Reading / Writing

Flash memories have a surprising property when it comes to writing data. In a flash memory, you can read the data, write a single bit from bit 1 to bit 0, but you cannot write a single bit from bit 0 to bit 1; due to the architecture that connects the flash cells together. This process is called earsing, and is only possible by doing it on an entire block of memory, usually consisting of some kilobytes to megabytes of size. 

One of their disadvantages is also wear. A single FG transistor wears out after between 10,000 and 1 million read/write operations. This problem is partially solved by using controllers that use the full available storage when writing data so that single cells do not wear out too quickly. 

#### 1.1.1.3. SSDs

Solid State Drives (SSDs) are usually a packaged form of NAND flash memories with correct controllers and connectors to replace the standard magnetic hard drives. They are a more and more common replacement of magnetic drives in computers because of their fast read/write capabilities, even though they stay more expansive per gigabyte. 

### 1.1.2. Random-access memories

Random access memory (RAM) is where the non-persistent data is stored on your computer. It is a volatile data storage. When starting a program, the operating system loads the content of the program into the RAM memory and the program's data is stored within the RAM memory.

The RAM memory is relatively fast to access, but looses its data when power is turned off. It needs a certain amount of power to be refreshed and to avoid loosing its data.

Most of the RAM storage available on the market are made from [DRAM cells](electronics.html#161-dram-cell-for-ram-storage).

### 1.1.3. Processor cache

In order to have an even faster memory, processors implement a part of memory directly onto their chips, called the cache memory. Its hardware implementation and location (closer to logic area of the processor) makes it the fastest storage accessible from the processor. This memory is also a type of random access memory, and shares its drawbacks (loss of data when power turns off).

Before data is loaded into processor registers from the RAM memory, it is actually transferred from RAM to cache memory. Knowing this is important to understand the performance of data structures and of some algorithms.

Most of cache storage are built using [SRAM cells](electronics.html#162-sram-cell-for-processor-cache-storage).
