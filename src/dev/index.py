import utils
import glob

def gen():
    utils.generate_markdowns_in_dir('dev')
    utils.copy_images('dev')
