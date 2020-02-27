using Luxor

const julia_blue    = (0.251, 0.388, 0.847)
const julia_purple  = (0.584, 0.345, 0.698)
const julia_green   = (0.22, 0.596, 0.149)
const julia_red     = (0.796, 0.235, 0.2)

function draw()
    currentwidth = 900 # pts
    currentheight = 250 # pts
    Drawing(currentwidth, currentheight, "logo.svg")

    sethue(julia_red)
    circle(Point(45, 30), 25, :fill)

    sethue(julia_purple)
    circle(Point(120, 30), 25, :fill)
    
    sethue(julia_green)
    circle(Point(830, 30), 25, :fill)

    # origin()

    fontsize(300)                             
    fontface("Literata SemiBold")
    
    str = "actScı" # Uses "dotless i" 

    translate(0, 225)

    textpath(str)                             # make text into a path
    setline(3)
    setcolor("black") 
    fillpreserve()                            # fill but keep

    finish()
end

draw()
preview()