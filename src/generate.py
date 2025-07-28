import layout
import utils
import shutil
import sys

import dev.index as dev
import computerarch.index as comp
import books.index as books
import home.index as index

# For local dev, output in nginx default dir
if len(sys.argv) > 1 and (sys.argv[1] == '--local' or sys.argv[1] == '-l'):
    utils.OUTPUT_DIR = '/usr/share/nginx/html/'

print('Generating in ' + utils.OUTPUT_DIR)

dev.gen()
comp.gen()
books.gen()

utils.write_file('index.html', layout.banner(index.build_index(), 'WaterDrop.jpg'))
utils.process_file('about.html', lambda x: layout.banner(x, 'WaterDrop.jpg'))
utils.copy_images('.')

print('Done.')