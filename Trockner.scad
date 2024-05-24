include<grid.scad>
include<frame.scad>

$preview = true;
$fn = $preview ? 10 : 64;

module filter(
    framewidth = 15, 
    frameheight = 30, 
    width = 300, 
    depth = 750,
    gridsize = 0.125,
    wirediameter = 0.125 / 2,
    gridcolor = "#a0a0a0"
){
    frame(frameheight, framewidth, width, depth);
    color(gridcolor)
    mesh(gridsize, wirediameter, width, depth);
}

filter();