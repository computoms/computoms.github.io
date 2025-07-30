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

def list_books():
    books = []
    for mdf in utils.list_markdowns('books'):
        metadata, _ = utils.split_metadata(utils.read_file(mdf))
        books.append(metadata)
    return books

def build_index():
    o = """
    <h1>Book Shelf</h1>

    <p>Here are interesting books I recommend reading.</p>

    <h2>Science</h2>
    <div class="w3-flex" style="flex-wrap: wrap">
    """

    science_books = [book for book in list_books() if book['category'] == 'science']
    science_books = sorted(science_books, key=lambda x: x['date'], reverse=True)
    tech_books = [book for book in list_books() if book['category'] == 'tech']
    tech_books = sorted(tech_books, key=lambda x: x['date'], reverse=True)

    for book in science_books:
        o += book_shelf_display(book)

    o += "</div>"
    o += "<h2>Tech</h2>"
    o += """
    <div class="w3-flex" style="flex-wrap: wrap">
    """

    for book in tech_books:
        o += book_shelf_display(book)

    o += "</div>"
    return o

def build_book_header(metadata):
    return """
<div class="w3-flex">
    <img class="w3-padding" src="images/""" + metadata['image'] + """\" alt=\"""" + metadata['title'] + """ - Cover" width="250px" />
    <div style="width: 400px;" class="w3-padding">
    <p><i>""" + metadata['subtitle'] + """</i></p>
    <p>""" + metadata['authors'] + """</p>
    <p><b>Published:</b> """ + str(metadata['published']) + """</p>
    </div>
</div>
    """

def generate_markdowns():
    for mdf in utils.list_markdowns('books'):
        metadata, md_content = utils.split_metadata(utils.read_file(mdf))
        md_content = md_content.replace('[BOOK_HEADER]', build_book_header(metadata))
        utils.write_file(mdf.replace('.md', '.html'), utils.convert_markdown(md_content))

def gen():
    generate_markdowns()
    utils.copy_images('books')
    utils.write_file('books/index.html', layout.root(build_index()))
