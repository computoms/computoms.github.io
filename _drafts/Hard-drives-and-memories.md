---
layout: post
title:  "Data storage: implementations"
date:   2019-05-01 14:00:00 +0200
categories: storage
published: false
---

![Magnetic Hard Drive]({{site.url}}/images/posts/05_Hard-drive.jpg)

## From storing charges to the DRAM

A capacitor is a small electronic component which is composed of two metal sheets that are separated by an isolating material. 

This component can be used to store an electric charge. Using a current generator to force electrons to go from one of the metal sheets to the other, we are storing a charge on the capacitor. Using a series of these components can be used to store information: either charge one of them to represent a 1 at its position; or discharge it to represent a 0. 

Let's imagine we use lots of these components in an array with possibility to choose which one we want to connect. This allows us to charge or discharge a particular capacitor from this array. This allows to store and access information by encoding it using the electric charge stored on capacitors. This is the base principle of a DRAM memory (Dynamic Random Access Memory), the type of memory used for the [Random-access memory](https://computoms.com/2019/03/31/data-storage/) of the computer. 

## From storing magnets to the hard drive

The interesting property of ferromagnetic materials, which are used to make permanent magnets, is we can actually _change_ their permant magnetic field orientation by applying a large magnetic field on them to force the orientation of the magnetic orientations inside the material. 

Let's imaging we can arrange on a line a series of ferromagnets separated by some distance. Let's align their magnetic fields in the same direction. Now, take a strong magnetic field generator, say a strong electro-magnet. If we want to encode information into our system, we can approach the electro-magnet to the ferromagnets representing positions where we want to encode bit 1 and switch it on to chage the orientation of these magnets while keeping the others to the initial orientation (representing bit 0).

> Show image of the principle

This is the idea behind a magnetic hard drive. 

> Explain a bit more into details how to mangetize / demagnetize bits using a electromagnets
> and make it into disks
