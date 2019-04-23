include <gear_generator.scad>

%difference() {
	cylinder(r=5, h=100, center=true);
	cylinder(r=4.6, h=110, center=true);;
}

// piston head
translate([0, 20, 0]) {
	difference() {
		cylinder(r=4.4, h=12, center=true);

		// o-ring
		translate([0, 0, 4]){
			difference() {
				cylinder(r=10, h=0.8, center=true);
				cylinder(r=4, h=1, center=true);
			}
		}
		// o-ring
		translate([0, 0, -5]) {
			difference() {
				cylinder(r=10, h=0.8, center=true);
				cylinder(r=4, h=1, center=true);
			}
		}
		cylinder(r=3, h=3);

		// Spring socket
		translate([0, 0, 5.5]) {
			cylinder(r=4, h=3);
		}

		translate([0, 0, 10]) {
			cube(size=[2.5, 5.5, 20], center=true);
		}
	}
}

// Luer Lock cylinder head
translate([0, -20, 0]) {
	difference() {
		union() {
			cylinder(r=4.6, h=6, center=true);
			translate([0, 0, -3.3]) {
				cylinder(r=5, h=1, center=true);
			}
			translate([0, 0, -6]) {
				cylinder(r1=1.2, r2=1.5, h=10, center=true);
			}
		}
		cylinder(r=0.5, h=50, center=true);
		cylinder(r1=1, r2=2, h=6.5, center=true);
	}
}

// cylinder but
translate([20, 0, 0]) {
	difference() {
		union() {
			translate([0, 0, 3]) {
				cylinder(r=5, h=1, center=true);
			}
			cylinder(r=4.6, h=6, center=true);
		}
		cube(size=[2.5, 5.5, 20], center=true);
		translate([0, 0, -4]) {
			cylinder(r=4, h=3, center=true);
		}
	}
}



//worm(modul=1, gangzahl=2, length=15, bohrung=4, pressure_angle=20, steigungswinkel=10, zusammen_gebaut=true);
