def titlecard(title, body, link):
    card_content = """
    <div class="w3-card w3-hover-shadow w3-margin w3-padding" style="max-width: 400px;">
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