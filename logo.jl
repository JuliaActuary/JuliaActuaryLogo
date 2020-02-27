using Luxor

const julia_blue    = (0.251, 0.388, 0.847)
const julia_purple  = (0.584, 0.345, 0.698)
const julia_green   = (0.22, 0.596, 0.149)
const julia_red     = (0.796, 0.235, 0.2)

function draw()
    currentwidth = 1250 # pts
    currentheight = 800 # pts
    Drawing(currentwidth, currentheight, "logo.svg")

    sethue(julia_red)
    circle(Point(90, 30), 25, :fill)

    sethue(julia_purple)
    circle(Point(165, 30), 25, :fill)
    
    sethue(julia_green)
    circle(Point(875, 30), 25, :fill)

    origin()

    fontsize(300)                             
    fontface("Literata SemiBold")
    
    str = "actScı" # Uses "dotless i" 
    w, h = textextents(str)[3:4]              # get width and height

    translate(-(currentwidth/2) + 50, -(currentheight/2) + h)

    textpath(str)                             # make text into a path
    setline(3)
    setcolor("black") 
    fillpreserve()                            # fill but keep

    finish()
end

draw()
preview()