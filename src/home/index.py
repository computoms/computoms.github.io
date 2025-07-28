import utils

def build_index():
    o = ''
    o += utils.read_file('home/welcome.part.html')
    o += utils.read_file('home/dev.part.html')
    o += utils.read_file('home/books.part.html')
    o += utils.read_file('home/computerarch.part.html')
    o += utils.read_file('home/projects.part.html')
    return o