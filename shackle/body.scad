$fn = 80;

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
