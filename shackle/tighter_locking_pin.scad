$fn = 80;

// Lock pin 2
translate([-60, 10, 10]) {
    rotate([0,180,0]){
        cylinder(r=3.4, h=18, center=true);
        translate([0,0,9.5]){ //change translation here to change lenght of the lockpin while snapped
            cylinder(r=2.3, h=12, center=true);
            translate([-1.8,0,4.5]){
                    sphere(r=0.9); // adjust diameters and translation to change snapping tightness and force
            }
            translate([1.8,0,4.5]){
                    sphere(r=0.9);
            }
         }


         // bottom rivet head
        translate([0, 0, -9]) {
            difference() {
                scale([1, 1, 0.6]) {
                    sphere(r=5.5);
                }
                translate([0, 0, 6]) {
                    cube(size=[15, 15, 10], center=true);
                }
            }
        }
    }
}
