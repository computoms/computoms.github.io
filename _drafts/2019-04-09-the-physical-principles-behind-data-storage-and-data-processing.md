---
layout: post
title:  "The physical principles behind data storage"
date:   2019-04-08 14:00:00 +0200
categories: physics storage
published: true
---

<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>

![Light bulbs](https://computoms.com/wp-content/uploads/2019/04/light-bulbs-918581_1920.jpg)

## Electromagnetism

As we know, matter is composed of molecules that are in turn composed of atoms -- electrons gravitating around a small dense nucleus of protons and neutrons. These tiny particles have different intrinsic physical properties, such as a **mass**, an **electric charge** and a **spin**. These properties are very interesting to store and process information.

> Define a force? => Fundamental forces (gravitational, electromagnetic and nuclear forces (weak/strong))

### Weight & the gravitational force

Let's start by using the _mass_ property of matter to show some physical interactions, that are very similar to the ones we actually use to store data in our computers.

If you hold an apple with your hand and suddenly drop it, it will fall on the floor. This is due to its weight. Its "weight" is actually the force applied on it by the Earth's mass. Two masses attract each other by a force that is proportional to their distance and to their masses: 

$$\vec{W} = G\frac{m_1 m_2}{r^2}$$

(where $$\vec{W}$$ if the force between the two masses, $$G$$ is a constant, $$m_1$$ and $$m_2$$ are the masses and $$r$$ is the distance between the masses). This interaction is considered a long-distance interaction, meaning that it is usually the dominant interaction for objects that are heavy and can act at very long distances (stars, planets and all sorts of objects into space are mainly ruled by this interaction). In the nano-world, where sub-atomic particles live (electrons, protons...) the masses at stake are infinitely small; too small for this gravitational interaction to be dominant. It is usually neglected when investigating the interactions between particles and atoms.


### Electric charge, electric force

Now onto the _electric charge_. The electric charge of an electron is negative and measured in Coulomb (about $$-1.6\cdot 10^{-19}$$ C which we'll write $$-e$$) whereas the one of a proton is positive ($$+e$$) and the one of a neutron is null. Two electric charges of the same sign (for example, two electrons) repel each other while two electric charges of the opposite sign attract each other. The amplitude of this attracting / repulsing force is:

$$ F = k \frac{q_1 q_2}{r^2} $$

(where $$F$$ is the electrique force, also called _electrostatic force_, $$k$$ is a constant (the _Coulomb's constant_), $$q_1$$ and $$q_2$$ are the electric charge of the particles and $$r$$ is the distance separating the charges). 

In conductive materials, such as most metals, electrons can freely move and hop from one atom to the other where there is some space available while atomic nucleus are fixed. Using the electric attraction/repulsion forces, we can force electrons to move through a conductive material. This creates a current (= moving eletric charges).

### Moving electrons

How do we actually force electrons to move inside a metal? Using the above formula, one way to do this would be to have, at one end of a piece of metal, a large _fixed_ charge $$q_1$$. The other way to make them move is by using a current generator. But to understand how a current generator works, we need to understand how the electric charges can interact with the _magnetic force_.

### Spin & the magnetic force

The magnetic force can be produced by two mechanisms: 

* a moving charge
* a piece of matter that has special properties, that we call a permanent magnet

#### Force fields

To make it easier to study the forces in some cases, physicits have defined a quantity called a _field_. 

> A field represents a quantity that has a value in each point of the space. 

For example, you can define the "wind field" as being the intensity of the wind on each point of the Earth's surface. 

Fields have been invented by physicists to easily describe the interactions that are applied on a single particle at a position in space. For example in the case of force fields, it describes the forces applied to a given particle at a given position in space. 

Taking back the electrostatic force equation between two particles, we can transform it as follows:

$$ F = k \frac{q_1 q_2}{r^2} = q_1 \cdot \left( k \frac{q_2}{r^2} \right) = q_1 \cdot E$$

Then we define the quantity $$E$$ as the electric field. If we had several particles around $$q_1$$, we could sum them up into $$E$$ to describe the resulting force applied to $$q_1$$.


#### The electromagnetic field

The equation derived above gives the force applied on a single charged particle (of charge $$q_1$$) when it is _static_. This is why we call it the _electrostatic_ force. When the charge $$q_1$$ is moving, an additional component comes into play in the resulting force applied to it:

$$\vec{F} = q\vec{E} + q\vec{v} \times \vec{B}$$

This force is called the _Lorentz's force_. $$\vec{v}$$ is the velocity of the particle and $$\vec{B}$$ is the magnetic field. The magnetic field is a field that can be generated by two physical mechanisms:

* a moving charge
* a piece of matter called a _permanent magnet_

#### Permanent magnets and spins

A permanent magnetic is a matter than generates a static magnetic field $$\vec{B}$$. These types of materials are called ferromagnetic materials and can actually be _magnetized_ (by applying a large magnetic field on them) to become permanent magnets. 

The **spin** of particles, an intrinsic property of elementary particles such as electrons and protons/neutrons, is responsible for the magnetic orientation of atoms. The magnetic orientation is also called the _magnetic moment_. In most materials, these magnetic orientations are ordered randomly such that the resulting magnetic orientation of the material is zero. In ferromagnetic materials, the magnetic orientation of the atoms have a tendency to align with neighboring atoms. In such a case, it creates regions inside the material where the magnetic orientation is aligned. Applying a large magnetic field to these matter will cause the regions to algin with each other so that the total magnetic orientation of a material is aligned to form a permanent magnet.

In summary, a ferro-magnetic material:

* can be _magnetized_ in order to create a permanent magnet -- a material that creates a permanent static magnetic field. 
* can be modified so that its magnetic orientation chages by applying a large magnetic field. 

This allows to encode information into ferromagnetic pieces by changing the magnetic orientation / probing the magnetic field of each ferromagnetic piece, as we'll see on a next post about hard drives. 

### Current generator

A current generator is a device that converts mechanical motion into electrical current. It is based on the magnetic part of the Lorentz' force law. That is, when no electric field are present in a region of space:

$$\vec{F} = q \vec{v} \times \vec{B}$$

Now let's imaging we have a fixed metal wire inside which electrons can move if they feel a force $$\vec{F}$$. If we take this wire close the a fixed permanent magnet and move it along the magnet, the electrons inside the wire will have a speed, with respect to the magnet, equal (and opposite) to the speed at which we are moving the wire. The resulting force or amplitude $$F = q v B$$ (if the wire is moved perpendicularly to the magnetic field $$B$$ of the magnet at speed $$v$$) will be applied on each electron of charge $$q$$. 

> Include a figure to show the principle

Now mechanically, this is not very efficient. We have to move a long wire along a fixed magnet and then collect the current on this wire. What if we bend the wire into a coil around the magnet; and make the coil rotate around the magnet. This would actually result in the same force on each electron. 

Better.

Now in the formula, $$\vec{v}$$ is actually the velocity of a charge particle with respect to a fixed magnetic field. This is equivalent to having a fixed charged particle with moving magnetic field $$\vec{B}$$ at velocity $$\vec{v}$$. In this case, we could have a fixed wire and make the magnet move along the wire. Or we could have a fixed coil around a spinning magnet. This is actually even better in terms of mechanic, because it allows to input our mechanical motion onto the spinning magnet and collect the current at the output of the coil with a fixed electrical circuit. 

> Include a figure of the current generator

This is the basic idea behind which a current generator is made. There are a lot of ways to actually construct a current generator, but they are all based on the same physical principles explained above.

## Summary
