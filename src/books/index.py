import utils
import layout

def book_shelf_display(book):
    return """
    <div class="w3-card w3-center w3-hover-shadow w3-margin w3-padding" style="width: 250px;">
        <a href=\"""" + book['page'] + """\" class="nounder">
            <header class="w3-container">
                <img src=\"images/""" + book['image'] + """\" width="200px" style="width: auto; height: auto; max-width: 200px; max-height: 250px;" alt=\"""" + book['title'] + """\" />
            </header>
            <div class="w3-container">
                """ + book['title'] + """
            </div>
        </a>
    </div>
    """

def build_index():
    o = """
    <h1>Book Shelf</h1>

    <p>Here are interesting books I recommend reading.</p>

    <h2>Science</h2>
    <div class="w3-flex" style="flex-wrap: wrap">
    """

    for book in utils.list_articles('books', filter=utils.Filter('category', 'science')):
        o += book_shelf_display(book)

    o += "</div>"
    o += "<h2>Tech</h2>"
    o += """
    <div class="w3-flex" style="flex-wrap: wrap">
    """

    for book in utils.list_articles('books', filter=utils.Filter('category', 'tech')):
        o += book_shelf_display(book)

    o += "</div>"
    return o

def build_book_header(book):
    return """
<div class="w3-flex">
    <img class="w3-padding" src="images/""" + book['image'] + """\" alt=\"""" + book['title'] + """ - Cover" width="250px" />
    <div style="width: 400px;" class="w3-padding">
    <p><i>""" + book['subtitle'] + """</i></p>
    <p>""" + book['authors'] + """</p>
    <p><b>Published:</b> """ + str(book['published']) + """</p>
    </div>
</div>
    """

class BookMdProcessor(utils.MarkdownProcessor):
    def __init__(self):
        super().__init__()

    def process(self, content, metadata):
        return content.replace('[BOOK_HEADER]', build_book_header(metadata))

def gen():
    utils.generate_markdowns('books', markdown_processor=BookMdProcessor())
    utils.copy_images('books')
    utils.write_file('books/index.html', layout.Layout().build(build_index()))
