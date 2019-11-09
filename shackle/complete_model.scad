$fn=50;

// shackle body
difference() {
	cylinder(r=40, h=45, center=true);
	cylinder(r=35, h=100, center=true);
	cube([100, 9, 100], center=true);
	translate([28, -6, 9.9]) {
		cube(size=[20, 2, 20]);
	}
	translate([28, -6, -29.9]) {
		cube(size=[20, 2, 20]);
	}
	translate([37, 5, 0]) {
		cube(size=[20, 2, 20.4], center=true);
	}
	translate([-45, 4.2, 9.9]) {
		cube(size=[20, 2, 20]);
	}
	translate([-45, 4.2, -29.9]) {
		cube(size=[20, 2, 20]);
	}
	translate([-37, -5, 0]) {
		cube(size=[20, 2, 20.4], center=true);
	}
}

// chain link
rotate([0, 90, 0]){
	translate([0, -43, 0]) {
		difference() {
			cylinder(r=8, h=9, center=true);
			cylinder(r=4, h=12, center=true);
		}
	}
}

// first hinge
translate([37, 0, 0]) {
	// hinge tube
	difference() {
		cylinder(r=5.5, h=45, center=true);
		cylinder(r=3.5, h=50, center=true);
		translate([0, 0, 10]) {
			cube(size=[15, 15, 0.2], center=true);
		}
		translate([0, 0, -10]) {
			cube(size=[15, 15, 0.2], center=true);
		}
	}

	// rivet pin
	cylinder(r=3.4, h=50, center=true);

	// top rivet head
	translate([0, 0, 23.7]) {
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
	translate([0, 0, -23.7]) {
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
translate([-37, 0, 0]) {
	// hinge tube
	difference() {
		cylinder(r=5.5, h=45, center=true);
		cylinder(r=3.5, h=50, center=true);
		translate([0, 0, 10]) {
			cube(size=[15, 15, 0.2], center=true);
		}
		translate([0, 0, -10]) {
			cube(size=[15, 15, 0.2], center=true);
		}
	}
}

// Lock pin
translate([-60, -20, 4.8]) {
	difference() {
		cylinder(r=3.4, h=55, center=true);

		translate([0, -2.5, 23.8]) {
			cube(size=[10, 2, 10], center=true);

			translate([0, 0, -5]) {
				rotate([0, 90, 0]) {
					cylinder(r=1, h=20, center=true, $fn=30);
				}
			}
		}
		translate([0, 2.5, 23.8]) {
			cube(size=[10, 2, 10], center=true);

			translate([0, 0, -5]) {
				rotate([0, 90, 0]) {
					cylinder(r=1, h=20, center=true, $fn=30);
				}
			}
		}
		translate([0, 0, 25]) {
			cube(size=[2.4, 20, 10], center=true);
			translate([0, 0, -5.4]) {
				rotate([90, 0, 0]) {
					cylinder(r=1.8, h=20, center=true);
				}
			}
		}
	}

	translate([2.2, 1.4, 25]){
		rotate([90, 0, 0]) {
			linear_extrude(2.8){
				polygon(
					points=[
					[0,0],
					[2,0],
					[2,1],
					[1,2.5],
					[0,2.5]
					]
				);
			}
		}
	}
	translate([-2.2, -1.4, 25]){
		rotate([90, 0, 180]) {
			linear_extrude(2.8){
				polygon(
					points=[
					[0,0],
					[2,0],
					[2,1],
					[1,2.5],
					[0,2.5]
					]
				);
			}
		}
	}

	// bottom rivet head
	translate([0, 0, -28.5]) {
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

// Lock cadnas
translate([-60, 0, 0]) {
	%difference() {
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
translate([-60, 20, 10]) {
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
