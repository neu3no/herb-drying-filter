// way to complex for my pc, so maybe i come up
// with an more efficient way...
module _mesh(grid, thick, width, depth) {
    rotate([-90,0,0]) {
        for (x=[0:2*thick+grid:width]) {
            translate([x,0,0])
            cube([thick, thick, depth]);
        }
       for (y=[0:2*thick+grid:depth]) {
            rotate([0,-90,0])
            translate([y,0,-width])
            cube([thick, thick, width]);
        }
    }
}

// temp solution, just a plate
module mesh(grid, thick, width, depth) {
    cube([
        width, 
        depth, 
        thick
    ]);
}
