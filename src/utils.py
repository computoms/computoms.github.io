from os import path as os_path
from os import makedirs as os_mkdirs
import layout
import markdown
import yaml
import glob
import shutil

OUTPUT_DIR = "../docs/"

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

def process_file(path, transf):
    content = read_file(path)
    write_file(path, transf(content))

def transform_markdown(path):
    content = read_file(path)
    md = markdown.Markdown(extensions=['toc'])
    html_content = md.convert(content)
    html_content = layout.root(html_content)
    write_file(path.replace('.md', '.html'), html_content)

def generate_markdowns_in_dir(dir):
    markdown_files = glob.glob(dir + '/*.md')
    for f in markdown_files:
        transform_markdown(f)

def copy_images(dir):
    if os_path.exists(dir + '/images'):
        shutil.copytree(dir + '/images', OUTPUT_DIR + dir + '/images', dirs_exist_ok=True)

def read_metadata(filename):
    with open(filename, 'r') as f:
        try:
            obj = yaml.safe_load(f)
            return obj
        except yaml.YAMLError as exc:
            print(exc)

def list_articles(dir):
    yaml_files = glob.glob(dir + '/*.yml')
    articles = []
    for f in yaml_files:
        metadata = read_metadata(f)
        articles.append(metadata)
    return articles