#### From storing charges to the DRAM

A capacitor is a small electronic component which is composed of two metal sheets that are separated by an isolating material. 

This component can be used to store an electric charge. Using a current generator to force electrons to go from one of the metal sheets to the other, we are storing a charge on the capacitor. To encode information, we can use a series of these components and either charge them (representing bit 1) or not (representing bit 0). Connecting the two metal sheets of a capacitor will discharge it, because of the electric force applied by the difference of charge between the two sheets of metal. Connecting a light-bulb between the two metal plates allows for example to see if the capacitor was charged or not. 

 Let's imagine we use lots of these components in an array with possibility to choose which one we want to connect. This allows us to charge or discharge a particular capacitor from this array. This allows to store and access information by encoding it using the electric charge stored on capacitors. This is the base principle of a DRAM memory (Dynamic Random Access Memory), the type of memory used for the [Random-access memory](https://computoms.com/2019/03/31/data-storage/) of the computer. 

#### From storing magnets to the hard drive

The interesting property of ferromagnetic materials, which are used to make permanent magnets, is we can actually _change_ their permant magnetic field orientation by applying a large magnetic field on them to force the orientation of the magnetic orientations inside the material. 

Let's imaging we can arrange on a line a series of ferromagnets separated by some distance. Let's align their magnetic fields in the same direction. Now, take a strong magnetic field generator, say a big and strong magnet. If we want to encode information into our system, we can approach the strong magnet to the ferromagnets representing positions where we want to encode bit 1 to chage the orientation of these magnets while keeping the others to the initial orientation (representing bit 0).

> Show image of the principle

This is the idea behind a magnetic hard drive. 

> Explain a bit more into details how to mangetize / demagnetize bits using a electromagnets
> and make it into disks
