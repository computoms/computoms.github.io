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

def process_file(path, transf):
    content = read_file(path)
    write_file(path, transf(content))

# Markdown processing

def list_markdowns(dir):
    return glob.glob(dir + '/*.md')

def convert_markdown(md_content):
    md = markdown.Markdown(extensions=['toc', 'mdx_math', 'fenced_code', 'tables'])
    html_content = md.convert(md_content)
    html_content = layout.root(html_content)
    return html_content

def transform_markdown(path):
    content = read_file(path)
    write_file(path.replace('.md', '.html'), convert_markdown(content))

# Images

def copy_images(dir):
    if os_path.exists(dir + '/images'):
        shutil.copytree(dir + '/images', OUTPUT_DIR + dir + '/images', dirs_exist_ok=True)


# Metadata

def split_metadata(content):
    start = content.find('---')
    end = content.find('---', start + 1)
    if start != -1 and end != -1:
        try:
            yaml_parsed = yaml.safe_load(content[start+3:end])
            return yaml_parsed, content[end+3:]
        except yaml.YAMLError as exc:
            print(exc)
