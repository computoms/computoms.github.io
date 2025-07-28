import utils

def gen():
    utils.generate_markdowns_in_dir('books')
    utils.copy_images('books')
