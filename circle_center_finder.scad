difference() {
	union(){
		cube([100, 100, 5]);
		translate([0, 0, 4.5]) {
			linear_extrude(6){
				polygon(
					points=[
						[0, 0],
						[20, 0],
						[100, 100-20],
						[100, 100],
					]
				);
				polygon(
					points=[
						[20, 0],
						[20, 12],
						[100, 12],
						[100, 0],
					]
				);
			}
		}
	}
	translate([-0.1, -0.1, -0.1]) {
		cube([85, 85, 6]);
	}
	translate([34, 13, 5]) {
		cylinder(d=6, h=8, $fn=20);
	}
	translate([100-17, 100-17, -1]) {
		cylinder(d=6, h=7, $fn=20);
	}
}
