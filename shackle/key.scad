$fn = 80;

// Lock cadnas
translate([-60, 0, 0]) {
	difference() {
		union() {
			cylinder(r=5.5, h=11);
			translate([0, 0, 11.2]) {
				cylinder(r1=5.5, r2=5, h=0.5, center=true);
			}
		}
		difference() {
			cylinder(r=3.5, h=20, center=true);

			translate([0, 4.1, 5]) {
				cube(size=[20, 5, 20], center=true);
			}
			translate([0, -4.1, 5]) {
				cube(size=[20, 5, 20], center=true);
			}
		}
		translate([0, 0, 12]) {
			cube(size=[20, 3.2, 10], center=true);
		}
	}
}


// Cadnas key
translate([-60, 20, 5]) {
	difference() {
		union() {
			cylinder(r=5.5, h=5, center=true);
			translate([4.4, 0, -1]) {
				cube(size=[2, 3, 8], center=true);
			}
			translate([-4.4, 0, -1]) {
				cube(size=[2, 3, 8], center=true);
			}
			translate([0, 0, 2.5]) {
				cube(size=[3, 10, 0.5], center=true);
			}
		}
		translate([0, 0, 0]) {
			rotate([90, 0, 0]) {
				cylinder(r=1, h=15, center=true);
			}
		}
	}
}
