import utils
import htmlutils
import layout

def build_index():
    header = """
    <h1>Computer Architecture</h1>

    <p>Ever wondered how a computer really works, from programs/windows/buttons down to transistors and electric currents ?</p>

    <p>Here is my take on this challenging task: explaining how a computer works from electricity to desktop applications.</p>
    <div class="w3-flex" style="flex-wrap: wrap;">
    """
    index = htmlutils.imagecard('Physics of the computer', 
            'This section explains what is the physics behind computers and how electrons are used to store and process information.', 
            'physics.html', 'images/physics.jpg') + \
            htmlutils.imagecard('Fundamental electronic components',
            """
            This section explains what are the basic building blocks of computer hardware : the most used components such as transistors and capacitors, as well as logic gates
            """, 'electronics.html', 'images/electronics.jpg') + \
            htmlutils.imagecard('Computer hardware',
        "Here are the best known computer hardware explained, such as hard drives, random access memories and processors.",
        'hardware.html', 'images/hardware.jpg') + \
            htmlutils.imagecard('Data formats and storage conventions',
            'Storing and processing different types of information using binary and conventions.', 
            'data.html', 'images/data.jpg') #+ \
            #htmlutils.titlecard('Operating systems',
            #'The human machine interface to control the electronics',
            #'os.html')
    footer = "</div>"
    return header + index + footer

def gen():
    for f in utils.list_markdowns('computerarch'):
        utils.transform_markdown(f)

    utils.copy_images('computerarch')
    utils.write_file('computerarch/index.html', layout.root(build_index()))
