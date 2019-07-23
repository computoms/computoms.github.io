---
layout: post
title:  "Data storage: implementations"
date:   2019-05-01 14:00:00 +0200
categories: storage
published: false
---

{% include figure.html image="images/posts/05_Hard-drive.jpg" caption="Image by blickpixel from Pixabay" %}

## From storing charges to the DRAM

A capacitor is a small electronic component which is composed of two metal sheets that are separated by an isolating material. It is mainly used to store an electric charge. 

The capacitors are used inside DRAM memories to represent bits as a charged capacitor (bit 1) or discharged capacitor (bit 0). One important aspect of a DRAM (Dynamic Random Access Memory) is the *Random Access* part. It means each bit can be access independently in the same amount of time. Let's look at the most common hardware implementation.



the type of memory used for the [Random-access memory](https://computoms.com/2019/03/31/data-storage/) of the computer. 

## From storing magnets to the hard drive

The interesting property of ferromagnetic materials, which are used to make permanent magnets, is we can actually _change_ their permant magnetic field orientation by applying a large magnetic field on them to force the orientation of the magnetic orientations inside the material. 

Let's imaging we can arrange on a line a series of ferromagnets separated by some distance. Let's align their magnetic fields in the same direction. Now, take a strong magnetic field generator, say a strong electro-magnet. If we want to encode information into our system, we can approach the electro-magnet to the ferromagnets representing positions where we want to encode bit 1 and switch it on to chage the orientation of these magnets while keeping the others to the initial orientation (representing bit 0).

> Show image of the principle

This is the idea behind a magnetic hard drive. 

> Explain a bit more into details how to mangetize / demagnetize bits using a electromagnets
> and make it into disks
