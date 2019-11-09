$fn = 80;

// Lock pin
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
