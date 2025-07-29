import utils

def build_latest_books():
    lb = ''
    lb += """
<div class="w3-light-grey">
    <div class="w3-container w3-content w3-padding-64" id="band">
        <h1>Books</h1>
        <p>
            Essential science and tech books to have in its shelf.
        </p>
        <h3>Latest books:</h3>
        <div class="w3-flex" style="flex-wrap: wrap">
"""

    books = sorted(utils.list_articles('books'), key=lambda x: x['date'])
    for book in books[:5]:
        lb += """
        <div class="w3-card w3-center w3-hover-shadow w3-margin w3-padding" style="max-width: 300px;">
            <a href=\"books/""" + book['page'] + """\" class="nounder">
                <header class="w3-container">
                    <img src=\"books/images/""" + book['image'] + """\" width="200px" style="width: auto; height: auto; max-width: 200px; max-height: 250px;" alt=\"""" + book['title'] + """\" />
                </header>
                <div class="w3-container">
                    """ + book['title'] + """
                </div>
            </a>
        </div>
        """

    lb += "</div></div></div>"
    return lb

def build_index():
    o = ''
    o += utils.read_file('home/welcome.part.html')
    o += utils.read_file('home/dev.part.html')
    o += build_latest_books()
    o += utils.read_file('home/computerarch.part.html')
    o += utils.read_file('home/projects.part.html')
    return o