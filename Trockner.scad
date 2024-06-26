include<grid.scad>
include<frame.scad>

$render_fully_assembled = true;
$render_mesh = false;
$render_all_parts_seperated = false;

$preview = true;
$fn = $preview ? 1 : 64;

$framewidth = 15;
$frameheight = 30; 
$width = 300;
$depth = 750;
$gridsize = 0.125;
$wirediameter = 0.125 / 2;
$gridcolor = "#a0a0a0";

module parts(){
    frame_short(
        $frameheight, 
        $framewidth, 
        $width, 
        $depth
    );
    
    translate([0, 0, $frameheight*2])
    frame_short(
        $frameheight, 
        $framewidth, 
        $width, 
        $depth
    );
    
    translate([$depth, 0, 0])
    rotate([0, 0, 90])
    translate([0, 0, $frameheight*4])
    frame_long(
        $frameheight, 
        $framewidth, 
        $width, 
        $depth
    );
    
    translate([$depth, 0, 0])
    rotate([0, 0, 90])
    translate([0, 0, $frameheight*5.5])
    frame_long_upper(
        $frameheight, 
        $framewidth, 
        $width, 
        $depth
    );
    
    translate([$depth, 0, 0])
    rotate([0, 0, 90])
    translate([0, 0, $frameheight*7])
    frame_long_lower(
        $frameheight, 
        $framewidth, 
        $width, 
        $depth
    );
}

if ($render_fully_assembled) {
    frame(
        $frameheight, 
        $framewidth, 
        $width, $depth
    );
} else if ($render_all_parts_seperated) {
    parts();
}

if ($render_mesh) {
    color($gridcolor)
    mesh(
        $gridsize, 
        $wirediameter, 
        $width, 
        $depth
    );
}
