
module frame(height, thickness, width, depth){
    //front
    cube([width,thickness, height]);
    
    //left
    translate([thickness,0,0])
    rotate([0,0,90])
    cube([depth, thickness, height]);
    
    //right upper
    translate([width,thickness,-thickness/2])
    rotate([0,0,90])
    cube([depth-thickness, thickness, height/2]);
    
    //right lower
    translate([width,thickness,0])
    rotate([0,0,90])
    cube([depth-thickness, thickness, height/2]);
    
    //back
    translate([0,depth,0])
    cube([width, thickness, height]);
}