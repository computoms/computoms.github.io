import utils
import layout
import yaml
import glob

def read_metadata(filename):
    with open(filename, 'r') as f:
        try:
            obj = yaml.safe_load(f)
            return obj
        except yaml.YAMLError as exc:
            print(exc)

def list_books():
    yaml_files = glob.glob('books' + '/*.yml')
    books = []
    for f in yaml_files:
        metadata = read_metadata(f)
        books.append(metadata)
    return books

def build_index():
    o = """
    <h1>Book Shelf</h1>

    <p>Here are interesting books to have in your shelf.</p>

    <h2>Science</h2>
    """

    for book in list_books():

        o += """
        <div class="w3-card w3-center w3-hover-shadow w3-margin w3-padding" style="max-width: 300px;">
            <a href=\"""" + book['page'] + """\" class="nounder">
                <header class="w3-container">
                    <img src=\"images/""" + book['image'] + """\" width="200px" alt=\"""" + book['title'] + """\" />
                </header>
                <div class="w3-container">
                    """ + book['title'] + """
                </div>
            </a>
        </div>
        """

    return o

def gen():
    utils.generate_markdowns_in_dir('books')
    utils.copy_images('books')
    utils.write_file('books/index.html', layout.root(build_index()))
