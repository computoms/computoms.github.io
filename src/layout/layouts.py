from .nav import nav

# Note: to generate code.css, use `.venv/bin/pygmentize -S nord -f html -a .codehilite > layout/code.css`

class Layout:

    ROOT_TITLE = "<title>Computoms</title>"
    ROOT_HEAD_ATTR = """
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
    """
    ROOT_STYLESHEETS = """
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/5/w3.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Quicksand:wght@300">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    """
    JS_EXTS = """
    <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/mathjax/2.7.4/MathJax.js?config=TeX-AMS_HTML-full"></script>
    <script type="text/x-mathjax-config">
        MathJax.Hub.Config({
            tex2jax: {
                inlineMath: [["$", "$"], ["\\\\(", "\\\\)"]],
                displayMath: [["$$", "$$"], ["\\[", "\\]"]],
                processEscapes: true
            },
            config: ["MMLorHTML.js"],
            jax: ["input/TeX", "output/HTML-CSS", "output/NativeMML"],
            extensions: ["MathMenu.js", "MathZoom.js"]
        });
    </script>
    """

    def root_attrs():
        return Layout.ROOT_TITLE + Layout.ROOT_HEAD_ATTR + Layout.ROOT_STYLESHEETS

    def build(self, content):
        o = "<!DOCTYPE html>"
        o += "<html lang=\"en\">"
        o += Layout.root_attrs()
        o += "<style>"
        with open('layout/base.css', 'r') as css:
            o += css.read()
        with open('layout/code.css', 'r') as code:
            o += code.read()
        o += "</style>"
        o += "<body>"
        o += Layout.JS_EXTS
        o += nav()
        o += """
        <div class="w3-content" style="max-width:2000px;margin-top:46px">
        <div class="w3-container w3-content w3-padding-64" id="band">
        """
        o += content
        o += "</div>"
        o += "</div>"
        o += "</body>"
        o += "</html>"
        return o

class BannerLayout(Layout):
    def __init__(self, image):
        super().__init__()
        self.image = image

    def build(self, content):
        banner_style = """
            .banner { 
            background-image: url("images/""" + self.image + """");
            background-repeat: no-repeat;
            background-position: center;
            background-size: 950px;
            width: 100%;
            }
        """

        o = "<!DOCTYPE html>"
        o += "<html lang=\"en\">"
        o += Layout.root_attrs()
        o += "<style>"
        with open('layout/base.css', 'r') as css:
            o += css.read()
        with open('layout/code.css', 'r') as code:
            o += code.read()
        o += banner_style
        o += "</style>"
        o += "<body>"
        o += Layout.JS_EXTS
        o += nav()
        o += """
        <div class="w3-content" style="max-width:2000px;margin-top:46px">
        """
        o += content
        o += "</div>"
        o += "</body>"
        o += "</html>"

        return o

