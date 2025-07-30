def titlecard(title, body, link):
    card_content = """
    <div class="w3-card w3-hover-shadow w3-margin w3-padding w3-center" style="max-width: 400px;">
        <a href=\"""" + link + """\" class="nounder">
        <header class="w3-container">
            <h3>""" + title + """</h3>
        </header>
        <div class="w3-container">
            """ + body + """
        </div>
        </a>
    </div>
    """
    return card_content

def imagecard(title, body, link, image):
    card_content = """
    <div class="w3-card w3-hover-shadow w3-margin w3-padding w3-center" style="max-width: 400px;">
        <a href=\"""" + link + """\" class="nounder">
        <div class="w3-padding">
            <header class="w3-container">
                <h3 style="height: 100px;">""" + title + """</h3>
                <img src=\"""" + image + """\" width="200px" />
            </header>
            <div class="w3-container w3-margin" style="height: 250px">
                """ + body + """
            </div>
        </div>
        </a>
    </div>
    """
    return card_content