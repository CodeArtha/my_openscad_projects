bullet_holder_diameter = 30;
bullet_holder_height = 40;
receptacle_diameter = 20;
receptacle_depth = 70;

// calibers
// 9mm
body_diameter_9mm = 9;
grove_diameter_9mm = 8.68;
// 357 mag
body_diameter_357mag = 9;
rim_diameter_357mag = 11;

//body
difference() {
	%cylinder(d=bullet_holder_diameter+18, h=110, center=true);
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
