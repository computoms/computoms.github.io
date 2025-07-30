from os import path as os_path
from os import makedirs as os_mkdirs
import layout
import markdown
import yaml
import glob
import shutil

OUTPUT_DIR = "../docs/"

# File IO

def read_file(path):
    with open(path, 'r') as i:
        return i.read()

def write_file(path, content):
    export_path = OUTPUT_DIR + path
    dir = os_path.dirname(export_path)
    if not os_path.exists(dir):
        os_mkdirs(dir)

    with open(export_path, 'w') as io:
        io.write(content)

# Markdown processing

def list_markdowns(dir):
    return glob.glob(dir + '/*.md')

# Converts markdown string to html output using default layout
# Or using fn_cusotm_layout function to be applied on resulting html string
def convert_markdown(md_content, layout_builder: layout.Layout = None):
    md = markdown.Markdown(extensions=['toc', 'mdx_math', 'fenced_code', 'tables'])
    html_content = md.convert(md_content)
    if layout_builder == None:
        layout_builder = layout.Layout()
    html_content = layout_builder.build(html_content)
    return html_content

class MarkdownProcessor:
    def process(self, content, metadata) -> str:
        pass

def generate_markdowns(dir, markdown_processor: MarkdownProcessor = None, fn_custom_layout = None):
    for mdf in list_markdowns(dir):
        metadata, md_content = split_metadata(read_file(mdf))
        if metadata != '' and 'draft' in metadata and metadata['draft'] == True:
            continue
        if markdown_processor != None:
            md_content = markdown_processor.process(md_content, metadata)
        write_file(mdf.replace('.md', '.html'), convert_markdown(md_content, fn_custom_layout))


# Images

def copy_images(dir):
    if os_path.exists(dir + '/images'):
        shutil.copytree(dir + '/images', OUTPUT_DIR + dir + '/images', dirs_exist_ok=True)


# Metadata

def split_metadata(content):
    start = content.find('---')
    end = content.find('---', start + 1)
    if start == -1 or end == -1:
        return '', content
    try:
        yaml_parsed = yaml.safe_load(content[start+3:end])
        return yaml_parsed, content[end+3:]
    except yaml.YAMLError as exc:
        print(exc)

class Filter:
    def __init__(self, key, value):
        self.key = key
        self.value = value

def list_articles(dir, filter: Filter = None):
    articles = []
    for mdf in list_markdowns(dir):
        metadata, _ = split_metadata(read_file(mdf))
        if filter == None or metadata[filter.key] == filter.value:
            articles.append(metadata)
    return sorted(articles, key=lambda x: x['date'], reverse=True)

