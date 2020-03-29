---
layout: post
title:  "Data storage: Interacting with matter"
date:   2019-04-16 14:00:00 +0200
categories: [Data Storage]
permalink: /data-storage/2019/04/16/interacting-with-matter/
image: 03_Interaction-with-matter.jpg
imagecaption: "Wind trubines"
---

Metals have the interesting property that electrons can freely move inside them. One way to store information is to use the _electric charge_ of electrons. But how do we move electrons?

<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>

### Current generator

A current generator is a device that converts mechanical motion into electrical current. It is based on the magnetic part of the Lorentz' force. That is, when no electric field are present in a region of space:

$$\vec{F} = q \vec{v} \times \vec{B}$$

Now let's imagine we have a fixed piece of metal inside which electrons can move if they feel a force $$\vec{F}$$. If we take this metal close the a fixed permanent magnet and move it along the magnet, the electrons inside the metal will have a speed, with respect to the magnet, equal to the speed at which we are moving the metal. The resulting force of amplitude $$F = q v B$$ (if the metal is moved perpendicularly to the magnetic field $$B$$ of the magnet at speed $$v$$) will be applied on each electron of charge $$q$$ (in the perpendicular direction of moving electrons). 

{% include figure.html image="images/posts/03_Current-generator-principle.png" caption="Current generator principle" width=300 %}

Now mechanically, this is not very efficient. What if we take a wire that we bend into a coil around the magnet; and make the coil rotate around the magnet. This would actually result in a force on electrons that would make them move along the coil's wire (the rotation makes the electrons have a speed that is perpendicular to the wire, in which case electrons will sense a force in the direction of the wire).

Better.

Now in the formula, $$\vec{v}$$ is actually the velocity of a charge particle with respect to a fixed magnetic field. We can also make the magnetic field move (at velocity $$\vec{v}$$) and keep the charges steady. For practical reasons, the current generators we use are usually made of a fixed coil (or fixed coils) inside which a rotary magnet is placed.

This is the basic idea behind which a current generator is made. There are a lot of ways to actually construct a current generator, but they are all based on the same physical principles explained above.

### Creating a magnetic field

As we saw in [Data storage: fundamental principles]({% post_url 2019-04-09-data-storage-fundamental-principles %}), some materials called _ferromagnetic_ materials can be magnetized, using a large magnetic field to align their internal magnetic orientations. Once magnetized, these materials emit a constant magnetic field.

Yet, there is another way of creating a magnetic field. When electric charges move, they actually create themselves a magnetic field. A constant electric current in a wire will generate a constant magnetic field. The equations that rule this phenomenon are called the [Biot-Savart](https://en.wikipedia.org/wiki/Biot–Savart_law) equations. 

To make the magnetic field stronger, we usually use a coil instead of a single wire. This device is called an **electro-magnet**. You can generate a magnetic field by switching on this device (for example, connecting it to a current generator), and turn off the magnetic field by turning off the device. 

This device is actually using the reverse principle that is used for a current generator. Instead of moving a magnet inside a coil to move electrons, we move electrons to generate a magnetic field. 

### Reversing a current generator: a motor

To transform electricity into a mechanical motion, it is simply possible to use the same device as a current generator, but instead of moving the magnet into the coil, we input a current inside the coil to make the magnet rotate. This is how an electric motor works.

