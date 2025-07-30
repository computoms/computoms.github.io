import utils
import layout
from datetime import datetime

def read_favorite_blogs():
    return utils.read_yaml('dev/favorite_blogs.yml')['blogs']

def read_interesting_posts():
    return utils.read_yaml('dev/web_posts.yml')['posts']

def build_index():
    o = """
<h1>Engineering blogs</h1>

<p>
Here is a list of interesting engineering blogs:

<ul>
    <li>
    <a href="https://github.com/kilimchoi/engineering-blogs">Engineering blogs</a>
    </li>
</ul>
</p>
"""
    o += "<h3>Personal selection of favorite blogs</h3><ul>"
    for post in read_favorite_blogs():
        o += "<li><a href=\"" + post['url'] + "\">" + post['title'] + "</a></li>"
    o += "</ul>"
    o += """
    <h2>Selection of articles form the web</h2>
    <p>Here is a selection of interesting articles form the web.</p>
    <ul>
"""
    for post in read_interesting_posts():
        o += "<li><a href=\"" + post['url'] + "\">" + post['title'] + "</a></li>"
    o += "</ul>"
    o += "<h2>Articles from me</h2>"
    o += "<ul>"
    for post in utils.list_articles('dev'):
        o += "<li><a href=\"/" + post['src'].replace('.md', '.html') + "\">" + post['title'] + "</a></li>"
    o += "</ul>"
    return o

class DevMarkdownProcessor(utils.MarkdownProcessor):
    def __init__(self):
        super().__init__()

    def process(self, content, metadata):
        date = metadata['date'].strftime('%b %d, %Y')
        return '# ' + metadata['title'] + '\n\n' + date + '\n' + content

def gen():
    utils.generate_markdowns('dev', markdown_processor=DevMarkdownProcessor())
    utils.copy_images('dev')
    utils.write_file('dev/index.html', layout.Layout().build(build_index()))
