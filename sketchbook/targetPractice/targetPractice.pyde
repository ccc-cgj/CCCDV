def setup():
    size(displayWidth, displayHeight)
    if frame != None:
        frame.setResizable(True)
    textAlign(CENTER, CENTER)
    textFont(createFont("Helvetica", 200, True))
    fill(0)
    noStroke()
def draw():
    background(255)
def keyPressed():
    if keyCode == LEFT:
        fill(0)
        text("left", width / 2, height / 2)
    if keyCode == RIGHT:
        fill(0)
        text("right", width / 2, height / 2)
    if key == 'l':
        background(0)
        fill(255)
        text("LEFT", width / 2, height / 2)
    if key == 'r':
        background(0)
        fill(255)
        text("RIGHT", width / 2, height / 2)

