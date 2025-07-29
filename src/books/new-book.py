
title = input("Title: ")
subtitle = input("Subtitle: ")
authors = input("Authors: ")
page = input("Page: ")
image_format = input("Image format: ")
cat = input("Category: ")
date = input("Date: ")

metadata = "page: " + page + ".html\n"
metadata += "image: " + page + "." + image_format + "\n"
metadata += "title: " + title + "\n"
metadata += "category: " + cat + "\n"
metadata += "date: " + date + "\n"

markdown = "# " + title + "\n\n"
markdown += """
<div class="w3-flex">
    <img class="w3-padding" src=\"images/""" + page + "." + image_format + """\" alt=\"""" + title + """ - Cover" width="250px" />
    <div style="width: 400px;" class="w3-padding">
    <p><i>""" + subtitle + """</i></p>
    <p>""" + authors + """</p>
    </div>
</div>

[TOC]
"""

with open(page + '.yml', 'w') as md:
    md.write(metadata)

with open(page + '.md', 'w') as cnt:
    cnt.write(markdown)
