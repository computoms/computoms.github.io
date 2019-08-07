---
layout: post
title:  "Data storage"
date:   2019-03-31 21:00:00 +0200
categories: [Data Storage]
published: true
permalink: /data-storage/2019/03/31/Data-storage/
---

![Binary representation illustration]({{site.url}}/images/posts/01_Binary-numbers.png)

## Data structures, algorithms

When speaking about algorithms, “data structures” is almost always the expression that comes along. Data structures and algorithms go in pair. An algorithm is fundamentally the manipulation of data from one form to another. The way we store this data is usually one of the important aspects to look at when designing an algorithm and looking at its performance.

{% include figure.html image="images/posts/01_Memory-and-algorithms.png" caption="Parallel between data structures / algorithms and memory / processor" %}

Choosing the right data structure for your algorithm or program usually involves thinking about how to efficiently store and retrieve the data associated to your problem.

To correctly understand how the different data structures work, it is then important to know how we store data in a computer.

# Computer memory

Basically, there are three “data storage” types in a computer:

* Hard drive storage
* Random-access memory
* Processor cache memory

## Hard drive

Hard drives are non-volatile data storage. This means that data remains unchanged when power is turned off. It is usually the cheapest and biggest memory in a computer, and is where you typically save your files, photos and other data you want to keep. One of the disadvantage of this type of memory is that it is usually slow (mostly due to hardware implementation as we’ll see in a futur post).

## Random-access memory

Random-access memory (RAM) is where the non-persistent data is stored on your computer. It is a volatile data storage. When starting a program, the operating system loads the content of the program into the RAM memory and the program’s data is stored within the RAM memory.

The RAM memory is relatively fast to access, as we’ll see below, but **looses its data when power is turned off**. As we’ll see in futur posts on the hardware implementation of RAM memory, it needs a certain amount of power to be refreshed and to avoid loosing its data.

This is the memory type we’ll be interested when talking about data structures. Its most common hardware implementation is interesting to study as it allows to have a clearer insight into how data structures actually work and why some are better than others for solving particular problems.

## Processor cache memory

In order to have an even faster memory, processors implements a part of memory directly onto their chips, called the cache memory. Its hardware implementation and location (closer to logic area of the processor) makes it the fastest storage accessible from the processor. This memory is also a type of random-access memory, and shares its drawback (loss of data when power turns off).

Before data is loaded into processor registers from the RAM memory, it is actually transferred from RAM to cache memory. Knowing this is important to understand the performance of data structures and some algorithms.

## Summary

Here is a summary of the characteristics of each computer memory.

| 	| Data access |	Persistence |
| --- | --- | --- |
| Hard drive | Slowest |	Persistent |
| RAM	| Fast |	Non-persistent |
| Processor cache |	Fastest |	Non-persistent |

<br/>
Next posts will present an overview of the standard hardware implementations of these memories in order to have a better understanding of how they work and how they can be used.