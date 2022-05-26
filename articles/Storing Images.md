{
"Title": "Storing Images",
"Abstract": "Three colors are enough to fool the eye.", 
"Parents": ["Storing Information on a Computer"], 
"Children": [""], 
"Date": "2022-05-25" 
}

How to store graphical contents, such as images or videos, on a computer memory?

As you can see on the [article on computer memories](Computer%20Memories.html), we can only store bits of information into the memory (_i.e._ state 0 or state 1).
To store an image, we need a way to convert the content of an image into a list of 0s and ones. As described in [storing numbers](Storing%20Numbers.html), we already know how to store different kinds of numbers into the memory. 
We thus need a way to transform the content of an image into numbers.

An image is usually a rectangle filled with different colors. As we saw in the description of [computer memories](Computer%20Memories.html), the memory of a computer can only store strings of data (uni-dimensional array of bits -- or numbers). 
We need to find a way to transform a rectangle filled with colours into a string of numbers. 

* The first step is digitalize the image: divide the image into a combination of small discrete regions. If we make the regions small enough, we can fool our eyes into believing the content is continus.

<table width="100%" class="w3-center">
	<tr><th>
		<img src="images/articles/image-digitalization.svg" class="w3-center" width="60%" />
	</th></tr>
	<tr><td class="w3-text-gray">Image digitalization.</td></tr>
</table>

* To store each region -- called pixel -- into the memory, which is linear, we can define in a convention, that we'll store all the rows of the digitalized image rectangle one after the other in the memory. But this is not enough, we also need to now the row lengths in order to reconstruct the image from the memory. We also need to know the total length of the image (number of pixels) so that we now when to stop reading the memory to reconstruct the image. To do this, we can store the length of a row (width of the image) at first, then the total size of the image, and then all the rows one after the other. 

<table width="100%" class="w3-center">
	<tr><th>
		<img src="images/articles/image-format-memory.svg" class="w3-center" width="60%" />
	</th></tr>
	<tr><td class="w3-text-gray">Image saved into memory with simple format.</td></tr>
</table>

* Scientists remarked that we can make almost all visible colours by mixing only three base colours: red, green and blue. Based on this, we can transform the colours of each pixel into a percentage of mixing for the red colour, a percentage of mixing for the green colour and a percentage of mixing for the blue colour. These are three numbers that completely define the pixel.

Let's take an example. For a pixel that is totally blue, the memory will look like (in numerical representation):

    [ 0 ] [ 0 ] [ 100 ]

This is because for a pixel that is totally blue, we do not mix any red nor green. Yellow is the combination of red and green. Thus for a yellow pixel, we'd have:

    [ 100 ] [ 100 ] [ 0 ]

These percentages can be store as an integer from 0 to 100, but to take advantage of the physical memories properties we usually at least store the number in the `unsigned char` data type (8 bits). To increase the range of colours accessible, we define that 0% corresponds to 0, and 100% corresponds to the maximum value of the `unsigned char` data type, which is 255. The data type used (usually `unsigned char` for bitmap images, but can be anything) is defined as a convention is the image data format. When reading an image from a comptuer memory, we need to know in advance its data _format_ it was saved in (_i.e._ the convention we used to lay out the information into the memory). If we only look at the memory, all we see is a list of numbers without any way to know that it is an image. This is why we need data types and data formats to store and read data on a computer.