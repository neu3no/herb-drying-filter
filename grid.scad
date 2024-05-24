module mesh(grid, thick, width, depth) {
    rotate([-90,0,0]) {
        for (x=[0:2*thick+grid:width]) {
            translate([x,0,0])
            cylinder(depth, thick, thick);
        }
       for (y=[0:2*thick+grid:depth]) {
            rotate([0,-90,0])
            translate([y,0,-width])
            cylinder(width, thick, thick);
        }
    }
}
