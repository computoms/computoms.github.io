# 1. Fundamental forces

[TOC]

Matter is composed of molecules that are in turn composed of atoms -- electrons gravitating around a small dense nucleus of protons and neutrons. These tiny particles have different intrinsic physical properties, such as a mass, an electric charge and a spin. 

Elements composing matter are interacting with each other mainly through the concept of _forces_. 

> A force is a representation of the physical interaction between two bodies (particles, molecules, objects); where one body is capable of giving an acceleration to the other (that is, to change its speed). 

In nature, there are only 4 fundamental forces that can explain all the interactions in our world: 

- The gravitational force
- The electromagnetic force
- The strong nuclear force
- The weak nuclear force

## 1.1. Mass & the gravitational force

The _mass_ is one of the few intrinsic characteristics of matter. This property defines the quantity of inertia a body has. It plays a role in the relationship between a force and the resulting acceleration of a body, through Newton's second law of mechanics (stating that the force equals the mass of a body multiplied by its acceleration). This property also rules the gravitational interaction between two bodies. Indeed, Newton's also discovered that two bodies with given masses are interacting together by attracting each other with a force that depends on both masses. 

IF you hold an apple with your hand and suddenly drop it, it will fall down on the floor. This is due to what we call its "weight", which is a force applied by the Earth onto the apple. Two masses attract each other with a force that is proportional to their distance and to their masses:

$$ W = G \times \frac{m1 \times m2}{r^2} $$

## 1.2. Sub-atomic forces

The strong and weak nuclear forces are forces that rule the sub-atomic world. The distance on which these forces can act are very small, on the order of the size of the atom itself and they do not play a role in computers; but are indispensable to maintain the atoms and their composing particles together. 

## 1.3. The Electromagnetic force: electrons charge & spin

The electromagnetic force regroups the electric force that relates to the electric charge of electrons and the magnetic force that relates to the spin of electrons.

The force applied on a moving particle `q` of velocity `v` inside an environment where an electric field `E` and a magnetic field `B` is present is equal to:

$$ F = q \times E + q \times v \times B $$

# 2. Creating Magnetic Fields

### 2.0.1. Creating a magnetic field

Some materials called _ferromagnetic_ materials can be magnetized, using a large magnetic field to align their internal magnetic orientations. Once magnetized, these materials emit a constant magnetic field.

Yet, there is another way of creating a magnetic field. When electric charges move, they actually create themselves a magnetic field. A constant electric current in a wire will generate a constant magnetic field. The equations that rule this phenomenon are called the <a href="https://en.wikipedia.org/wiki/Biot-Savart_law">Biot-Savart</a> equations. 

To make the magnetic field stronger, we usually use a coil instead of a single wire. This device is called an **electro-magnet**. You can generate a magnetic field by switching on this device (for example, connecting it to a current generator), and turn off the magnetic field by turning off the device. 

This device is actually using the reverse principle that is used for a current generator. Instead of moving a magnet inside a coil to move electrons, we move electrons to generate a magnetic field.

# 3. Force fields

First, it's been thought that electromagnetic forces were applied instantaneously between charged particles. But later experiments showed that it's not the case, there is an infinitesimal delay. If you make one particle oscillate around a position, another particle close by will feel the electric force, with a varying intensity (corresponding to its physical displacement) but with a small phase shift. This has big implications in terms of physics. 

Let's take the parallel of two floating tennis balls in a pool of water. If the two tennis balls are close enough, you could quickly move the first tennis ball and this will induce the second to move; through the water. If you didn't see the water, it would be like applying a force onto the second ball using the first one; just like the electric force. If the two balls are too far apart, you cannot do the same, i.e. the force that you can apply on the second ball depends on the distance. Now, if you make the tennis ball oscillate in the water, this will make the second ball move in a different way; because you created waves into the water. These waves propagate on the water surface and can have an effect much further away.

This phase shift in the propagation of electric/magnetic forces means that it is possible, much like in the water analogy, to create electromagnetic _waves_. But waves usually propagate through a medium, and so physicists invented a name for this medium: a _field_. The **electromagnetic field** was born. The electromagnetic waves can have effects much much further than the static forces would allow. They are travelling at the speed of light, which is `299 792 458 m/s`.

More theoretically, a force field has actually a mathematical definition; which basically defines "a non-contact force applied to a partile at various positions in space." [Wikipedia]

# 4. Electric force and electric field

The electric force is the force applied by a particle of charge `q` to other particles with a charge. The following formula gives the value of the electric force that a particle of charge $ q_1 $ applies on another particle of charge $ q_2 $ separated by distance `r`: 

$$ F = k q_1 \times \frac{q_2}{r^2} $$

where `k` is the Coulomb's constant.

## 4.1. Moving electrons, generating a current

How do we actually force electrons to move inside a metal? Using the above formula, one way to do this would be to have, at one end of a piece of metal, a large _fixed_ charge $ q_1 $ (i.e. a battery). The other way to make them move is by using a current generator (see next posts).

# 5. Magnetic Force

The magnetic force is the force generated by either:

* a charged moving particle
* a chuck of matter than has special properties, called a permanent magnet

## 5.1. Moving charges

When a charge is moving, it generates a magnetic force on other particles, that is proportional to its electric charge and speed. 

## 5.2. Permanent magnets and spins

A permanent magnet is a material that generates a static magnetic field `B`. These types of materials are called ferromagnetic materials and can actually be _magnetized_ (by applying a large magnetic field on them) to become permanent magnets. 

The **spin** of particles is responsible for the magnetic orientation of atoms. In most materials, these magnetic orientations are ordered randomly such that the resulting magnetic orientation of the material is zero. In ferromagnetic materials, the magnetic orientation of the atoms have a tendency to align with neighboring atoms. In such a case, it creates regions inside the material where the magnetic orientation is aligned. Applying a large magnetic field to these matter will cause the regions to align with each other so that the total magnetic orientation of a material is aligned to form a permanent magnet.

In summary, a ferro-magnetic material:

* can be _magnetized_ in order to create a permanent magnet -- a material that creates a permanent static magnetic field. 
* can be modified so that its magnetic orientation changes by applying a large magnetic field. 

This allows to encode information into ferromagnetic pieces by changing the magnetic orientation / probing the magnetic field of each ferromagnetic piece.

## 5.3. Creating Magnetic Fields

### 5.3.1. Creating a magnetic field

Some materials called _ferromagnetic_ materials can be magnetized, using a large magnetic field to align their internal magnetic orientations. Once magnetized, these materials emit a constant magnetic field.

Yet, there is another way of creating a magnetic field. When electric charges move, they actually create themselves a magnetic field. A constant electric current in a wire will generate a constant magnetic field. The equations that rule this phenomenon are called the <a href="https://en.wikipedia.org/wiki/Biot-Savart_law">Biot-Savart</a> equations. 

To make the magnetic field stronger, we usually use a coil instead of a single wire. This device is called an **electro-magnet**. You can generate a magnetic field by switching on this device (for example, connecting it to a current generator), and turn off the magnetic field by turning off the device. 

This device is actually using the reverse principle that is used for a current generator. Instead of moving a magnet inside a coil to move electrons, we move electrons to generate a magnetic field.