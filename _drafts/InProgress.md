---
layout: post
title:  "Data storage: persistent storage"
date:   2019-08-06 14:00:00 +0200
categories: storage
published: false
---

{% include figure.html image="images/posts/06_Hard-drive.jpg" caption="Image by blickpixel from Pixabay" %}

Persistent storage are used in computer to store information for a long time. Files, pictures, videos should be stored in a persistent manner such that it is not lost when the computer is powered down. Here I will explain briefly what are the three major persistent storage used in computers: magnetic hard drives, flash memories and the solid state drives. 

## Storing magnets: the hard drive

The interesting property of ferromagnetic materials, which are used to make permanent magnets, is we can actually _change_ their permant magnetic field orientation by applying a large magnetic field on them to force the orientation of the magnetic orientations inside the material. 

Let's imaging we can arrange on a line a series of ferromagnets separated by some distance. Let's align their magnetic fields in the same direction. Now, take a strong magnetic field generator, say a strong electro-magnet. If we want to encode information into our system, we can approach the electro-magnet to the ferromagnets representing positions where we want to encode bit 1 and switch it on to chage the orientation of these magnets while keeping the others to the initial orientation (representing bit 0).

	Show image of the principle

This is the idea behind a magnetic hard drive. In reality, the ferromagnets are tiny regions of a coating ferromagnetic material that is spread over a circular disk, called a platter. This disk rotates around its center at a given speed, usually around 5000 rotations per minutes. A fixed reading head is placed just above the surface of the disk and reads the data while the disk is rotating. An electronic controller converts the requests from the computer in order to move the read/write head for reading/writing the correct portion of information.

(See https://www.explainthatstuff.com/harddrive.html)

## Flash memories


## Solid State Drives

