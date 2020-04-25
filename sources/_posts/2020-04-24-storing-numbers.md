---
layout: post
title:  "Storing numbers"
date:   2020-04-27 14:00:00 +0200
categories: data-storage
permalink: /data-storage/2020/04/27/storing-numbers/
image: 09_Storing-Numbers.png
---

Previous articles presented the mechanisms behind storing information in computers, as bits. The physical principles and the devices we are using in computers right now do not allow to store anything else, other than 0s or 1s. So how do we store numbers, other than 0 and 1?

<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>

## Counting with 0s and 1s: binary numbers

Ordinarily, in order to represent numbers we are disposing digits (from 0 to 9) side by side in order to construct a number. For example: 

> 123 means "one hundred and twenty three"

In order to find the corresponding number from a list of digits, we are using the base 10 and the following formula: 

$$ 1 \times 10^2 + 2 \times 10^1 + 3 \times 10^0 $$

So, if we only have two digits we can count on base 2 instead. For example, `101` in base two would be:

$$ 1 \times 2^2 + 0 \times 2^1 + 1 \times 2^0 $$

And so `101` in binary (base 2) would represent `5` in decimal (base 10).

_Note:_ to avoid confusions where necessary, the index $$n_2$$ is appended to the numbers $$n$$ to specify that it's a number written in binary (base 2) and the index $$n_{10}$$ is appended to numbers $$n$$ written in decimal (base 10).

Numbers can be thus stored in computer memories and storages using the binary notation by storing the sequence of bits in this representation. In the previous example, 123 would be stored as `1111011`.

## Data types

If we come back to our working memory, everything it has is a list of 0s and 1s. How can we store different numbers and know which bit corresponds to which number? In other words, how to know when the second number starts?

For example, in binary $$17$$ would write $$10001_2$$ and 5 would write $$101_2$$. If we store them directly into memory we have $$10001101_2$$ and there's no way to know if we are representing 16 and 5 or 9 ($$1001_2$$) and 12 ($$1101_2$$) etc. To solve this problem, we invented data types. A _data type_ is a type of number that is represented by a fixed number of bits. This means, a data type can only represent a fixed number of numbers because it is bounded by the number of bits.

Let's say that we want to store our numbers 17 and 5 using a data type that is represented by 6 bits. 6 bits only allows to store numbers from 0 ($$000000$$) to 63 ($$111111$$) but we can now store these two numbers as $$010001000101_2$$. Reading this part of memory, we'll know that it contains two numbers, because we know that we are using our data type of 6 bits; and can devide this portion of memory into the two numbers $$010001_2$$ and $$000101_2$$.

Now, we usually do not store numbers in 6 bits data types, but rather in multiple of 8 bits -- which is called one byte. In programming languages, the different sizes in which we can store our data are defined by the compiler. In C/C++, you can find definitions of fixed-size types in <stdint.h> header.

The byte data type (`uint8_t` in C and C++ languages, which usually refers to `unsigned char`) is thus a number represented on 8 bits, that can store decimal numbers from 0 to 255 ($$0000 0000_2$$ to $$1111 1111_2$$).

For bigger numbers, we have the 16-bits representation (`uint16_t` usually `unsigned short` in C) that can store numbers from 0 to 65 535, and the 32-bits representation (`uint32-t`, usually `unsigned int`) storing numbers from 0 to 4 294 967 295. Sometimes, we also have the 64-bits data type (usually `unsigned long long`, depending on processor and compiler) that stores very big numbers, from 0 to 18 446 744 073 709 551 615.


## Negative numbers

In mathematics, we are representing the negative numbers using the minus sign `-`. In computer hardware, there's no such thing. Only 0 and 1, so we needed to find a way to _encode_ our negative numbers in binary form without using an extra symbol.

There are several ways to encode a negative number into binary, but the main technique that is used nowadays by processors is called _two's complement_.

Let's take a 4-bits chuck of memory as an example. In regular encoding, as seen above, this chunk can store numbers from 0 ($$0000_2$$) to 15 ($$1111_2$$). With 4 bits, we can only store 16 different values, so the idea with the two's complement method is to shift the values in order to represent numbers from -8 to 7 instead -- so that we can represent negative numbers. 

The two's complement method goes like this: for each strictly positive number, you can find it's negative counter-part by inverting all its bits and adding one. For example:

| Number (base 10) | 4-bits binay | Negative (base 10) | Two's complement |
|------------------|--------------|--------------------|------------------|
| $$1$$ | $$0001$$ | $$-1$$ | $$1110 + 0001 = 1111$$ |
| $$2$$ | $$0010$$ | $$-2$$ | $$1101 + 0001 = 1110$$ |
| $$3$$ | $$0011$$ | $$-3$$ | $$1100 + 0001 = 1101$$ |
| $$7$$ | $$0111$$ | $$-7$$ | $$1000 + 0001 + 1001$$ |

This also works the other way around:

| Number (base 10) | 4-bits binay | Negative (base 10) | Two's complement |
|------------------|--------------|--------------------|------------------|
| $$-1$$ | $$1111$$ | $$1$$ | $$0000 + 0001 = 0001$$ |
| $$-2$$ | $$1110$$ | $$2$$ | $$0001 + 0001 = 0010$$ |
| $$-3$$ | $$1101$$ | $$3$$ | $$0010 + 0001 = 0011$$ |
| $$-7$$ | $$1001$$ | $$7$$ | $$0110 + 0001 + 0111$$ |

There are two special cases, though: $$0$$ and $$-8$$:

| Number (base 10) | 4-bits binay |  Two's complement |
|------------------|--------------|------------------|
| $$0$$  | $$0000$$ | $$0000$$ |
| $$-8$$ | $$1000$$ | $$1000$$ |

More formally, the two's complement $$b$$ of a binary number $$a$$ encoded using $$n$$ bits is the binary number such that $$a + b = 2^n$$ with $$n$$ the number of bits that encodes $$a$$ and $$b$$. Thus, $$b = 2^n - a$$, and we can find our two special cases:

| 4-bit number $$a$$ | two's complement (base 10) | two's complement on 5-bits | 4-bit two's complement |
|-----------------|-------------|------------------|-------------|
| $$0000$$ | $$16 - 0 = 16$$ | $$10000 - 00000 = 10000$$ | $$0000$$ |
| $$1000$$ | $$16 - 8 = 8$$ | $$10000 - 01000 = 01000$$ | $$1000$$ |

As you can see, overflowing bits are thrown away (the fifth bit cannot be stored as we are using 4 bits to stored our numbers).

**The reason behind two's complement representation**

Why are we using such a complicated formula? Because the goal of computers is to compute (perform operations on numbers) and this representation helps our electronic components handle the data. For example, using the two's complement reprsentation it is straightforward to add two numbers. The addition rule is the same as with positive numbers (adding bits one by one with the carry):

| Decimal addition | Binary addition | Binary result | Decimal result |
|---|---|---|---|
| $$6 + (-4)$$ | $$0110 + 1100$$ | $$(1)0010$$ | $$2$$ |

The second advantage of this representation is we can easily implement subtraction: to perform $$a - b$$, we only need to transform $$b$$ into its two's complement representation and then add the two numbers $$a + (-b)$$.


## Floating point numbers

Until now, we saw how to store integer numbers. But how to store fractional numbers, such as $$2.34$$? We need a different encoding for these numbers: the floating-point format. We are usually representing fractional numbers in two sizes: 32 bits (`float` type in C) and 64 bits (`double` type in C). 

Recall how to construct a decimal number using powers of tens. For fractional numbers, it is the same, but with negative powers of tens after the comma: the number $$12.345$$ can be written:

$$12.345 = 1 \times 10^1 + 2 \times 10^0 + 3 \times 10^{-1} + 4 \times 10^{-2} + 5 \times 10^{-3} $$

We can use the same approach to represent a binary number:

$$ 1100.101_2 = 1 \times 2^3 + 1 \times 2^2 + 0 \times 2^1 + 0 \times 2^0 + 1 \times 2^{-1} + 0 \times 2^{-2} + 1 \times 2^{-3} $$

The idea behind encoding floating point numbers is like representing the numbers in scientific notation. Scientific notation, in decimal, is the representation of any number in the form 

$$ number = y.xxx \times 10^e$$

for example: 
$$ 1 345 673.12 = 1.34567312 \times 10^6$$

Thus the binary number scientific notation would be:

$$ number_2 = 1.xxx \times 2^e $$

for example:
$$ 1100.101_2 = 1.100101_2 \times 2^{11_2} $$

This is what is used to encode fractional binary numbers: $$ \pm 1.[fraction] \times 2^{[exponent]} $$. 

### 32-bit floating point encoding (float)

On 32 bits, we divid the bits with 1 sign bit $$s$$, 8 exponent bits $$e$$ and the remaining 23 bits for the fractional part:

{% include figure.html image="images/posts/09_Floating-point-numbers.png" caption="Floating point number encoding on 32 bits" %}

The formula for decoding a 32-bit floating point number is as follows:

$$ n_{10} = (-1)^s \times 2^e \times ( 1 + \sum_i b_{23-i} \times 2^{-i}) $$

where $$n_{10}$$ is the resulting decimal number, $$s$$ is the sign bit (most significant bit), $$e$$ is the decimal value corresponding to the 8 exponent bits and $$b_i$$ are the bits number $$i$$.

#### Sign bit

The most significant bit (bit 31) is the sign bit. `0` means we encoded a positive number, and `1` is negative.

#### Exponent encoding

The exponent $$e$$ is not encoded using the two's complement representation, but with a different one: the offset-binary representation with the zero offset being 127. This means that $$0000 \, 0000_2$$ represents $$-126$$, $$1000 \, 0000_2$$ represents $$0$$ and $$1111 \, 1111_2$$ represents $$127$$.

#### Fraction encoding

The fractional part of the number is encoded with standard binary encoding. There is a simple method to convert a decimal fractional part into binary:

* multiply by two
* take the integer part (either 0 or 1) which will be the binary bit number -1 (bit number 22 in our 32-bit floating-point encoding)
* multiply the fractional part of the number obtained by 2
* repeat for bit number -2 ... -22 (bits 21 to 0 in 32-bit floating-point encoding)

For example, for 0.345:

| Multiply by 2 | Integer part | Fracitonal part | Bit number in 32-bit representation |
|---------------|-------------------|-----------|--------------------------|
| $$ 0.345 \times 2 = 0.690$$ | $$0$$ | $$0.690$$ | 22 |
| $$ 0.690 \times 2 = 1.380$$ | $$1$$ | $$0.380$$ | 21 |
| $$ 0.380 \times 2 = 0.760$$ | $$0$$ | $$0.760$$ | 20 |
| $$ 0.760 \times 2 = 1.520$$ | $$1$$ | $$0.520$$ | 19 |
| $$ 0.520 \times 2 = 1.040$$ | $$1$$ | $$0.040$$ | 18 |
| $$ 0.040 \times 2 = 0.080$$ | $$0$$ | $$0.080$$ | 17 |
| .. | .. | .. | .. |
| $$ 0.880 \times 2 = 1.760$$ | $$1$$ | $$0.760$$ | 0 |

#### Range and Precision

The fractional part is stored with 23 bits. This allows a precision of between 7 and 9 significant digits ($$2^{23} = 8 \, 388 \, 608$$). The exponent is stored on 8 bits, which allows numbers from $$2^{-126} \approx 1.175 \times 10^{-38}$$ to $$2^{127} \approx 1.701 \times 10^{38}$$.

### 64-bit floating point encoding (double)

The `double` data type, as for double precision floating-point, is a data type encoded on 64 bits: 1 sign bit, 11 exponent bits and 52 fractional bits.

#### Range and Precision

The 52 bits of the fractional part allows between 15 and 17 significant digits ($$2^{52} \approx 4.5 \times 10^{15}$$). The exponent is stored on 11 bits, which allows numbers from $$2^{-1023}$$ to $$2^{1024}$$ although sometimes these two bounds are reserved for special purposes.


## Conclusion

This article presented the different ways computers store numbers in their memories and data storages:
* unsigned integters on 8, 16, 32 and sometimes 64 bits
* signed integers using two's complement encoding on 8, 16, 32 and sometimes 64 bits
* floating point numbers using fractional and exponent parts of binary scientific notation on 32 and 64 bits. 


