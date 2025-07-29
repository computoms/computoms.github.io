import utils
import layout

def book_display(book):
    return """
    <div class="w3-card w3-center w3-hover-shadow w3-margin w3-padding" style="max-width: 300px;">
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

    <p>Here are interesting books to have in your shelf.</p>

    <h2>Science</h2>
    <div class="w3-flex" style="flex-wrap: wrap">
    """

    science_books = [book for book in utils.list_articles('books') if book['category'] == 'science']
    science_books = sorted(science_books, key=lambda x: x['date'], reverse=True)
    tech_books = [book for book in utils.list_articles('books') if book['category'] == 'tech']
    tech_books = sorted(tech_books, key=lambda x: x['date'], reverse=True)

    for book in science_books:
        o += book_display(book)

    o += "</div>"
    o += "<h2>Tech</h2>"
    o += """
    <div class="w3-flex" style="flex-wrap: wrap">
    """

    for book in tech_books:
        o += book_display(book)

    o += "</div>"
    return o

def gen():
    utils.generate_markdowns_in_dir('books')
    utils.copy_images('books')
    utils.write_file('books/index.html', layout.root(build_index()))
