import layout
import utils
import sys
import shutil
from os import makedirs
from os import path

import dev.index as dev
import computerarch.index as comp
import books.index as books
import home.index as index

# For local dev, output in nginx default dir
if len(sys.argv) > 1 and (sys.argv[1] == '--local' or sys.argv[1] == '-l'):
    utils.OUTPUT_DIR = '/usr/share/nginx/html/'
if len(sys.argv) > 1 and (sys.argv[1] == '--draft' or sys.argv[1] == '-d'):
    utils.INCLUDE_DRAFTS = True

print('Generating in ' + utils.OUTPUT_DIR)
print('Cleaning dir')
if path.exists(utils.OUTPUT_DIR):
    shutil.rmtree(utils.OUTPUT_DIR)
if not path.exists(utils.OUTPUT_DIR):
    makedirs(utils.OUTPUT_DIR)
# Generate necessary CNAME DNS record
with open('../docs/CNAME', 'w') as cn:
    cn.write('www.computoms.com')

dev.gen()
comp.gen()
books.gen()

banner_lyt = layout.BannerLayout('WaterDrop.jpg')
utils.write_file('index.html', banner_lyt.build(index.build_index()))
utils.write_file('about.html', banner_lyt.build(utils.read_file('about.html')))
utils.copy_images('.')

print('Done.')