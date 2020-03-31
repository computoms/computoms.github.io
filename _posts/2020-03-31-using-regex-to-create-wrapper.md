---
layout: post
title:  "Using Regex to create a C++ library wrapper with Sublime Text"
date:   2020-03-31 14:00:00 +0200
categories: tools
permalink: /tools/2020/03/31/library-wrapper-with-regex/
image: 08_Regex-Sublime.png
imagecaption: "Artcie opened with Sublime Text 3"
---

Regex is a very powerful tool for manipulating text, and every developer should have some knowledge of this tool in his toolbox.

In this article, I will show how we can use regular expressions to quickly create a C++ library wrapper around a C library using only a text editor that supports regular expressions in its _Find_ and _Replace_ menu -- for example Sublime Text 3.  

To enable regular expressions in Sublime Text 3, open the _Find..._ or _Replace..._ (Cmd + F / Cmd + Opt + F on MacOS, Ctrl + F / Ctrl + H on Windows) and click on the `.*` icon.

## Steps to create a library wrapper

Fron the library header file, here are the steps we need to make in order to create a valid C++ wrapper:
1. Find the lines corresponding to the function definitions that we want to wrap
2. Remove extra declarations, such as __cdelc and macros from function definitions
3. Copy these functions into a new header file containing the wrapper class
4. Copy these functions into a new source file
5. Add the class member definitions before the functions (i.e. `MyLibWrapper::`)
6. Create a body for each function that calls the function library with the arguments. This step actually consists in:
	- calling the function (without return type)
	- removing parameter type declarations

## 1. and 2. Remove extra lines and extra declarations

Usually, a good C/C++ library has export/import declarations at the start of each library function definition. For example

```cpp
LIBEXPORT int myFirstFunction(double p1);
LIBEXPORT void mySecondFunction(const char *p1);
LIBEXPORT int myThirdFunction();
```

Here, `LIBEXPORT` is a C macro defined to be either `__declspec( dllimport )` or `__declspec( dllexport )` depending on whether we are compiling the library for export or we are importing the library to use in our project. We can use this to clean the file from extra lines that do not correspond to functions of our wrapper:

_Find_: `^(?!LIBEXPORT)(.*)` & _Replace_: ``

Explanations: `^` is the start of line. `(?!x)` is the negation, of x, meaning we want the lines that are *not* start with LIBEXPORT. `(.*)` means any character (until end of line for the Sublime Text 3 search & replace tool). 

Then, remove extra newlines

_Find_: `^\n` & _Replace_: ``

Explanations: Find all lines that are starting (`^`) with a new line charater `\n`. This could also be `\r\n` depending on the platform.

## 3. Clean up and create the header

We do not need `LIBEXPORT` and other declarations anymore, so we can remove them by Find/Replace.

To create the header, we need to copy all the function declarations into the wrapper class. Keep the working file open and copy functions into a new header file with the class declaration. For example, the new header will look as follows:

```cpp
#ifndef LIBWRAPPER_H
#define LIBWRAPPER_H

class MyLibWrapper
{
public:
	int myFirstFunction(double p1);
	void mySecondFunction(char *p1);
	int myThirdFunction();
};

#endif
```

## Create the source

To create the source, we can start by copying the function declarations into a new `.cpp` file. 

The idea is then to use regular expressions to find function names, and parameters in order to call the functions.

### 5. Add class member definition

There are two ways in Sublime Text 3 to achieve this.

#### Using multi-cursor functionality
Sublime Text 3 allows to have multiple cursors in order to type one thing at multiple locations. You can define multiple cursor by placing your cursor somewhere, for example at the beginning of the line of the first function, and clicking simultaenously on `Cmd + Opt + Down arrow` (`Ctrl + Alt + Down arrow` on Windows). Then, you can jump to the next word using `Opt + Right arrow` (`Ctrl + Right arrow` on Windows) and add the class name here.

#### Using Regex
You can also use a regular expression to do this (note: remove extra spaces before the function return types before applying this regex):

_Find_: `^([^\s]*)\s` & _Replace_: `\1 MyLibWrapper::`

Explanations: `[^\s]` means a character that can be anything _but_ a whitespace. The following `*` means to repeat 0 or more times the expression. In total, we find lines beginning (`^`) with a character which is not a whitespace, that is repeated 0 or more times until we find a whitespace `\s`. The characters that came before the whitespace are taken into the first group (thanks to parentheses. We can then replace the whole expression found by the first group `\1` (without the space) + what we want to add.

This gives

```cpp
int MyLibWrapper::myFirstFunction(double p1);
void MyLibWrapper::mySecondFunction(char *p1);
int MyLibWrapper::myThirdFunction();

```


### 6. Create the function bodies

Here is the regular expression to create function bodies:

_Find_: `([^\s]*)(.*)\((.*)\);` & _Replace_: `\1\2(\3)\n{\n    return ::\2(\3);\n}\n` 

Explanations: nothing more here compared to previous explanations. There are three groups, the first one is used to find the function return type. Parentheses are special regex characters so they have to be escaped using the backslash `\`.

This gives

```cpp

int myFirstFunction(double p1)
{
	return ::myFirstFunction(double p1);
}

void mySecondFunction(char *p1)
{
	return ::mySecondFunction(char *p1);
}

int myThirdFunction()
{
	return ::myThirdFunction();
}

```

Now, the missing things to make a valid source file is to remove the parameter types in the library function calls. To do that, we can use a series of Find/Replace operations on the different parameter types of the library functions. For example:

_Find_: `return (.*)double([^\s]*)\s` & _Replace_: `return \1`

Will remove the `double ` (with the space) from the first function call, making the line look like: `return ::myFirstFunction(p1);`. We can repeat this operation by replacing `double` by `char` in the _Find_ operation to remove the `char` of the function call, or any other types. 

We also have to remove point references. This can be done using

_Find_: `return (.*)\*` & _Replace_: `return \1`


## Conclusion

By using a series of _Find_ and _Replace_ operations using a text editor that supports regular expressions, such as Sublime Text 3, we were able to very quickly clean-up and create a new C++ class that acts as a parser for a C library. This class can then be derived in a sub-class for testing or to modify some behavior of the library. I am sure there are still more clever ways to do it, and if you have one, please let me know in a comment.