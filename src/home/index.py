import utils
import dev.index as dev_index

def build_dev():
    o = """
<div class="w3-container w3-content w3-padding-64" id="band">
    <h1><a href="/dev">Tech blogs</a></h1>
    <p>
        List of interesting blogs, blog posts and my take on some subjects.
    </p>
    <h3>Latest articles form the web</h3>
    <p>
    <ul>""" 
    for post in dev_index.read_interesting_posts():
        o += "<li><a href=\"" + post['url'] + "\">" + post['title'] + "</a></li>"
    o += """
    </ul>
    </p>
    <h3>Latest blog posts</h3>
    <ul>"""
    for post in utils.list_articles('dev'):
        o += "<li><a href=\"" + post['src'].replace('.md', '.html') + "\">" + post['title'] + "</a></li>"
    o += """
    </ul>
</div>
"""
    return o

def build_latest_books():
    lb = ''
    lb += """
<div class="w3-light-grey">
    <div class="w3-container w3-content w3-padding-64" id="band">
        <h1><a href="/books">Books</a></h1>
        <p>
            My advice on science and tech books to read.
        </p>
        <h3>Latest books</h3>
        <div class="w3-flex" style="flex-wrap: wrap">
"""

    books = sorted(utils.list_articles('books'), key=lambda x: x['date'], reverse=True)
    for book in books[:5]:
        lb += """
        <div class="w3-card w3-center w3-hover-shadow w3-margin w3-padding" style="width: 300px;">
            <a href=\"""" + book['src'].replace('.md', '.html') + """\" class="nounder">
                <h4>
                    """ + book['category'].capitalize() + """
                </h4>
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
    o += build_dev()
    o += build_latest_books()
    o += utils.read_file('home/computerarch.part.html')
    o += utils.read_file('home/projects.part.html')
    return o