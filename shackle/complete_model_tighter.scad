$fn=50;

// shackle body
difference() {
	cylinder(r=31, h=35, center=true);
	cylinder(r=28, h=100, center=true);
	cube([100, 9, 100], center=true);
	translate([25, -6, 7.8]) {
		cube(size=[20, 2, 20]);
	}
	translate([25, -6, -29.8]) {
		cube(size=[20, 2, 22]);
	}
	translate([37, 5, 0]) {
		cube(size=[20, 2, 16.4], center=true);
	}
	translate([-45, 4.2, 7.9]) {
		 cube(size=[20, 2, 20]);
	}
	translate([-45, 4.2, -29.9]) {
		cube(size=[20, 2, 22]);
	}
	translate([-37, -5, 0]) {
		cube(size=[20, 2, 16.4], center=true);
	}
}

// chain link
rotate([0, 90, 0]){
	translate([0, -34, 0]) {
		difference() {
			cylinder(r=7, h=7, center=true);
			cylinder(r=4, h=12, center=true);
		}
	}
}

// first hinge
translate([30, 0, 0]) {
	// hinge tube
	difference() {
		cylinder(r=5.5, h=35, center=true);
		cylinder(r=3.8, h=50, center=true);
        translate([0, 0, 8]) {
			cube(size=[15, 15, 0.5], center=true);
		}
		translate([0, 0, -8]) {
			cube(size=[15, 15, 0.5], center=true);
		}
	}

	// rivet pin
	cylinder(r=3.4, h=37, center=true);

	// top rivet head
	translate([0, 0, 19]) {
		difference() {
			scale([1, 1, 0.6]) {
				sphere(r=5.5);
			}
			translate([0, 0, -6]) {
				cube(size=[15, 15, 10], center=true);
			}
		}
	}
	// bottom rivet head
    translate([0, 0, -19]) {
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

// second hinge
translate([-30, 0, 0]) {
	// hinge tube
	difference() {
		cylinder(r=5.5, h=35, center=true);
		cylinder(r=3.8, h=50, center=true);
		translate([0, 0, 8]) {
			cube(size=[15, 15, 0.5], center=true);
		}
		translate([0, 0, -8]) {
			cube(size=[15, 15, 0.5], center=true);
		}
	}
}

// Lock pin 1
translate([-60, 10, -9]) {
    difference(){
        cylinder(r=3.4, h=18, center=true);
        translate([0,0,9.1]){
            cylinder(r=2.5, h=12, center=true);
         }
         translate([0,0,5]){
                rotate([0,90,0]){
                    cylinder(r=0.8, h=10, center=true);
                }
         }
     }
     
     // bottom rivet head
	translate([0, 0, -9.9]) {
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