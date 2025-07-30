import utils

def gen():
    for f in utils.list_markdowns('dev'):
        utils.transform_markdown(f)
    utils.copy_images('dev')
