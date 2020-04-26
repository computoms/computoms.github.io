---
layout: post
title:  "Storing characters"
date:   2020-05-11 14:00:00 +0200
categories: data-storage
permalink: /data-storage/2020/05/11/storing-characters/
image: 10_Storing-Characters.png
published: false
---

Next on the list, is to understand how we can store characters and strings of characters into computer memories?

<script src="https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML" type="text/javascript"></script>

## American Standard Code for Information Interchange - ASCII encoding

Using the same approach as for numbers (see [Storing Numbers]({% post_url 2020-04-27-storing-numbers %})), the different characters of the alphabet will be encoded in a special way in order to store them in memory. 

For numbers, we could choose different types: signed or unsigned (with raw binary storage or two's complement method), and number of bytes (1, 2, 4, 8). For real numbers, we used the floating-point encoding on 4 or 8 bytes (`float` or `double` types). 

If we can store numbers, we can then decide for a convention to convert letters into numbers first; and then store the corresponding numbers in memory. This is what was done by the C language in its early begining, by inventing the ASCII encoding. ASCII encoding is a convention that makes a link between the English alphabet letters and numbers. It defines the conversion of 127 characters (including 32 special characters, the 26 letter of the alphabet in lowercase, the 26 letters of the alphabet in uppercase, the 10 digits and 33 symbols). These characters can thus be stored on 7 bits of memory. Most of the times though, the ASCII encoding is stored on 1 byte of memory instead of 7 bits because most of the processors use the bytes as working data blocks for their instructions and are faster to process these types of blocks. Also most of the memories are addressable bytes by bytes and have been optimized for this. It is thus easier to loose one bit for each character. 

In C, this type of data is represented by the `char` type. So, the `char` type is just a `uint8_t` type that is understood by the compiler as a letter, and converted to the corresponding letter (using the ASCII convention) when needed (for example, when we want to print the caracters to the console).

Here is the ASCII convention table that translates letters into their equivalent 7-bit encoded numbers:

{% include figure.html image="images/posts/10_ASCII-Table.png" caption="ASCII conversion table" width="100%" %}

## Storing other alphabets - Unicode

This is great for the English language, but what if we want to write and store a text written in French, Spanish or any other language with special characters such as accents (é à è ö ñ etc.)? We need another convention that can also store these different characters.

At first the ASCII encoding was extended. As it was store on 1 byte but only used 8 bits, people started to use the remaining bit (so another 128 possibilities) to encode different letters until a common enconding was found: the _Unicode Encoding_. 

The Unicode encoding is a bit more than a conversion between characters and numbers: it defines the conversion between characters and _code points_, that are then translated into storable bits using different techniques, called **UTF-8**, **UTF-16** and **UTF-32** (amongst others). It defines $$1 \, 112 \, 064$$ code points corresponding to the different characters existing in the different languages on this planet. To store such a big amount of numbers, we needed more space than only one byte, and that's why the different UTF encodings have been invented.

### UTF-32 encoding


UTF stands for _Unicode Transformation Format_ and is a standard on storing the different unicode _code points_. It is a fixed bit-length format that takes 4 bytes of memory to store each character. The good thing about UTF encodings, is that it is retrocompatible with ASCII convetion. The first 127 numbers represent the same characters as in ASCII. The principle is then the same but with more space.

The problem with this encoding is that if the texts you are saving to memory are most of the times English or using the ASCII characters, you are saving a lot of empty bytes filled with zeros. To overcome this constraint and reduce the memory footprint of character storage, variable-length encodings have been invented: UTF-8 and UTF-16.


### UTF-8 encoding

The UTF-8 is a variable bit-length format that takes at minimum 1 byte of memory for each character, but can go up to 4 bytes of memory for a single character.

The principle behind the encoding uses the fact that ASCII only uses 7 bits to store its characters, so we can use the remaining bit to say if we are storing ASCII (last bit is $$0$$) or if we are using more bytes to store an extra character (last bit is $$1$$). In the latter case, we'll set each following bits to $$1$$ to indicate the length of our character in bytes and the next bit will be set to $$0$$ as a separator. For example, if we see the first byte of UTF-8 encoded string that is $$110x \, xxxx$$ it means that it is a character that is encoded in two bytes. Here is a table that summarizes the possible scenarios for UTF-8 encoded characters:

| Number of bytes | Byte 1 | Byte 2 | Byte 3 | Byte 4 |
|-----------------|--------|--------|--------|--------|
| 1 | 0xxxxxxx |   |   |   |
| 2 | 110xxxxx | 10xxxxxx |          |          |
| 3 | 1110xxxx | 10xxxxxx | 10xxxxxx |          |
| 4 | 11110xxx | 10xxxxxx | 10xxxxxx | 10xxxxxx |

By using a variable length enconding like this one, we are saving space on the memory. This encoding is one of the most used encoding for storing strings of characters in programs and websites.

### UTF-16 encoding

...

### Notes

Although UTF-32 is using more memory, the main advantage of such a fixed-size encoding is search speed: the access to the Nth character is a constant time lookup. In variable-length encodings, it requires the algorithm to parse all the N characters in order to find the correct byte to read. 


