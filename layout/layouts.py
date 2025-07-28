from .nav import nav
import utils

ROOT_TITLE = "<title>Computoms</title>"
ROOT_HEAD_ATTR = """
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
"""
ROOT_STYLESHEETS = """
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/5/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Quicksand:wght@300">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
"""

def root(content):
    o = "<!DOCTYPE html>"
    o += "<html lang=\"en\">"
    o += ROOT_TITLE
    o += ROOT_HEAD_ATTR
    o += ROOT_STYLESHEETS
    o += "<style>"
    o += utils.read_file('layout/base.css')
    o += "</style>"
    o += "<body>"
    o += nav()
    o += """
    <div class="w3-content" style="max-width:2000px;margin-top:46px">
    <div class="w3-container w3-content w3-padding-64" id="band">
    """
    o += content
    o += "</div>"
    o += "</div>"
    o += "</body>"
    o += "</html>"
    return o

def banner(content, image):
    banner_style = """
        .banner { 
        background-image: url("images/""" + image + """");
        background-repeat: no-repeat;
        background-position: center;
        background-size: 950px;
        width: 100%;
        }
    """

    o = "<!DOCTYPE html>"
    o += "<html lang=\"en\">"
    o += ROOT_TITLE
    o += ROOT_HEAD_ATTR
    o += ROOT_STYLESHEETS
    o += "<style>"
    o += utils.read_file('layout/base.css')
    o += banner_style
    o += "</style>"
    o += "<body>"
    o += nav()
    o += """
    <div class="w3-content" style="max-width:2000px;margin-top:46px">
    """
    o += content
    o += "</div>"
    o += "</body>"
    o += "</html>"

    return o

