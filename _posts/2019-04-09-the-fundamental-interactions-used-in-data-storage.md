---
layout: post
title:  "The fundamental interactions used in data storage"
date:   2019-04-09 14:00:00 +0200
categories: physics storage
published: true
---

<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>

![Light bulbs](https://computoms.com/wp-content/uploads/2019/04/light-bulbs-918581_1920.jpg)

## Physical interactions and properties of matter

As we know, matter is composed of molecules that are in turn composed of atoms -- electrons gravitating around a small dense nucleus of protons and neutrons. These tiny particles have different intrinsic physical properties, such as a **mass**, an **electric charge** and a **spin**. Some of these properties are interesting to store and process information.

To understand how we can use these physical properties, we need to understand how matter interacts. Specifically, we need to understand the concept of _force_. 

> A force is a representation of the physical interaction between two bodies (particles, molecules, objects); where one body is capable of giving an acceleration to the other (that is, to change its speed).

In nature, there are only 4 fundamental forces that can explain all the interactions of our world:
* The gravitational force
* The electromagnetic force
* The strong nuclear force
* The weak nuclear force

The two last forces relate to interactions inside sub-atomic particles and only take part in nuclear reactions. In this post, we'll focus on the two first fundamental forces.

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

How do we actually force electrons to move inside a metal? Using the above formula, one way to do this would be to have, at one end of a piece of metal, a large _fixed_ charge $$q_1$$. The other way to make them move is by using a current generator (see next posts).

### Spin & the magnetic force

The fundamental force we are using is actually called the _electromagnetic_ force. This is because the electric force is tightly coupled with the magnetic force, which is another type of interaction.

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

A permanent magnetic is a material that generates a static magnetic field $$\vec{B}$$. These types of materials are called ferromagnetic materials and can actually be _magnetized_ (by applying a large magnetic field on them) to become permanent magnets. 

The **spin** of particles, an intrinsic property of elementary particles such as electrons and protons/neutrons, is responsible for the magnetic orientation of atoms. The magnetic orientation is also called the _magnetic moment_. In most materials, these magnetic orientations are ordered randomly such that the resulting magnetic orientation of the material is zero. In ferromagnetic materials, the magnetic orientation of the atoms have a tendency to align with neighboring atoms. In such a case, it creates regions inside the material where the magnetic orientation is aligned. Applying a large magnetic field to these matter will cause the regions to algin with each other so that the total magnetic orientation of a material is aligned to form a permanent magnet.

In summary, a ferro-magnetic material:

* can be _magnetized_ in order to create a permanent magnet -- a material that creates a permanent static magnetic field. 
* can be modified so that its magnetic orientation changes by applying a large magnetic field. 

This allows to encode information into ferromagnetic pieces by changing the magnetic orientation / probing the magnetic field of each ferromagnetic piece, as we'll see on a next post about hard drives. 

## Summary

In summary, we saw that matter is interacting by mechanisms that are modelled as forces. These forces are ruled by intrinsic properties of matter; of which the _eletric charge_ and _spin_ are important properties that we use to store information in our computers. 

Of the 4 fundamental forces ruling our world, we use the _electromagnetic_ force based on the electric charge and spin of particles to make them interact. 

We can store information using the electric charge of electrons, that can freely move inside metals. We can also store information using the magnetic field of a ferromagnetic material. 

In the next post, we'll see how to glue this together: how we can create devices to move electric charges and change or generate magnetic fields.