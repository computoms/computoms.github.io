{
"Title": "Storing Images",
"Abstract": "Three colors are enough to fool the eye.", 
"Parents": ["Storing Information on a Computer"], 
"Children": [""], 
"Date": "2022-05-25" 
}

How to store graphical contents, such as images or videos, on a computer memory?

Following the same principle explained in [Storing Characters](Storing%20Characters.html), images are stored in the memory using a convention that we define in advanced, saying how to convert an image into storable information. This convention is called a format or sometimes an encoding, like for numbers. The process to convert an image into a set of storable data is called digitization.

## Basic principle

An image is usually a rectangle filled with different colors. As we saw in the description of [computer memories](Computer%20Memories.html), the memory of a computer can only store strings of data (uni-dimensional array of bits -- or numbers). 
We need to find a way to transform a rectangle filled with colors into a string of numbers. 

### "Pixelization"

The first step is to divide the image into a combination of small discrete regions. If we make the regions small enough, we can fool our eyes into believing the content is continuous. 

<table width="100%" class="w3-center">
	<tr><th>
		<img src="images/articles/image-digitalization.svg" class="w3-center" width="60%" />
	</th></tr>
	<tr><td class="w3-text-gray">Image digitalization.</td></tr>
</table>

### Metadata

To store each region -- called pixel -- into the memory, which is linear, we can define in a convention, that we'll store all the rows of the digitalized image rectangle one after the other in the memory. But this is not enough, we also need to know the row lengths in order to reconstruct the image from the memory. We also need to know the total length of the image (number of pixels) so that we know when to stop reading the memory to reconstruct the image. To do this, we could for example store the length of a row (width of the image) at first, then the total size of the image, and then all the rows one after the other. 

<table width="100%" class="w3-center">
	<tr><th>
		<img src="images/articles/image-format-memory.svg" class="w3-center" width="60%" />
	</th></tr>
	<tr><td class="w3-text-gray">Image saved into memory with simple format.</td></tr>
</table>

In practice, how we store these extra information is defined in the image format. It is part of a header section that contains metadata (extra information that is not part of the raw data of the image itself) and many more information could be present depending on the format. Some formats even allow adding custom metadata into the image file directly.

## Storing colors into the memory

Scientists remarked that we can make almost all visible colors by mixing only three base colors: <span style="color:red;">red</span>, <span style="color:green;">green</span> and <span style="color:blue;">blue</span>. 
Based on this, we can transform the colors of each pixel into a percentage of mixing for the red color, a percentage of mixing for the green color and a percentage of mixing for the blue color. 
These are three numbers that completely define the pixel's color.

Let's take an example. For a pixel that is totally blue, the memory will look like (in numerical representation):

<div style="text-align:center">
[ 0 ] [ 0 ] [ <span style="color:blue">100</span> ]
</div>

This is because for a pixel that is totally blue, we do not mix any red nor green. Yellow is the combination of red and green. Thus for a yellow pixel, we'd have:

<div style="text-align:center">
[ <span style="color:red">100</span> ] [ <span style="color:green">100</span> ] [ <span style="color:blue">0</span> ]
</div>

### Improving the range of colors

These percentages could be stored as integers from 0 to 100. However, to take advantage of the physical memories properties, they are usually stored using a different transformation depending on the underlying encoding we are using.

The simplest encoding uses the 8-bits data type to store each percentage, so that 0 corresponds to 0% and its maximum value (255) corresponds to 100%. Other formats exist, for example with 16-bits data types resulting in a increased color range available: from 0 to 65535.