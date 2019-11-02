// general
bullet_holder_diameter = 30;
bullet_holder_height = 40;
receptacle_diameter = 20;
receptacle_depth = 70;
rod_diameter = 10;

// calibers
// 9mm
body_diameter_9mm = 9;
grove_diameter_9mm = 8.68;
// 357 mag
body_diameter_357mag = 9;
rim_diameter_357mag = 11;

// body structure
translate([200, 0, 0]) {
	union() {
		difference() {
			cylinder(d=bullet_holder_diameter+18, h=110, center=true);
			union(){
				translate([0, 0, 45.1]) {
					//bullet holder socket
					cylinder(d=bullet_holder_diameter+1, h=bullet_holder_height/2, center=true);

					// bullet and powder receptacle
					translate([0, 0, -25]) {
						cylinder(d=receptacle_diameter, h=receptacle_depth, center=true);;
					}
					translate([0, 0, -60]) {
						sphere(d=receptacle_diameter);
					}

					//locking grove
					translate([0, 15, 3]) {
						cylinder(d=4, h=14, center=true, $fn=20);
						translate([3, -.4, -5]) {
							sphere(d=4, $fn=30);
						}
					}
					translate([0, -15, 3]) {
						cylinder(d=4, h=14, center=true, $fn=20);
						translate([-3, .4, -5]) {
							sphere(d=4, $fn=30);
						}
					}
				}
			}
		}
	}
}

//body to handle rod linkage
// can't seem to figure out how to make a valid trapezoid
/* translate([-20, 0, 40]) {
	rotate([-90,0,0]){
		polyhedron(
			points=[
				[0,0,0],
				[40,0,0],
				[40,80,0],
				[0,80,0],
				[5,70,20],
				[5,10,20],
				[35,10,20],
				[35,70,20]
			],
			faces=[
				[0,1,2,3],
				[1,2,7,6],
				[2,3,4,7],
				[3,0,5,4],
				[4,5,6,7],
				[0,1,6,5],
			]
		);
	}
}
translate([0, 10, 0]) {
	rotate([-90,0,0]){
		cylinder(d=rod_diameter, h=rod_diameter*2, center=true);
	}
} */
