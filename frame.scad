
module frame_short(height, thickness, width, depth){
    color("#9b815f"){
    //upper
    translate([0, 0, height/2])
    cube([width, thickness, height/2]);
    //lower
    translate([thickness, 0, 0])
    cube([width - 2*thickness, thickness, height/2]);
    }
}

module frame_long_upper(height, thickness, width, depth) {
    color("#6f5c44"){
    translate([thickness, thickness, height/2])
    rotate([0, 0, 90])
    cube([depth - 2*thickness, thickness, height/2]);
    }
}
module frame_long_lower(height, thickness, width, depth) {
    color("#6f5c44"){
    translate([thickness,0,0])
    rotate([0,0,90])
    cube([depth, thickness, height/2]);
    }
}
module frame_long(height, thickness, width, depth){
    frame_long_upper(height, thickness, width, depth);
    frame_long_lower(height, thickness, width, depth);
}

module frame(height, thickness, width, depth){
    // front
    frame_short(height, thickness, width, depth);
    
    // back
    translate([0,depth-thickness,0])
    frame_short(height, thickness, width, depth);

    //left 
    frame_long(height, thickness, width, depth);
    
    //right
    translate([width-thickness,0,height/2])
    mirror([0,0,1])
    frame_long(height, thickness, width, depth);
}