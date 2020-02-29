// general
bullet_holder_diameter = 30;
bullet_holder_height = 40;
receptacle_diameter = 20;
receptacle_depth = 70;
rod_diameter = 10;
$fn = 80;

// calibers
// 9mm
body_diameter_9mm = 9.84;
grove_diameter_9mm = 8.6;
grove_straight_height_9mm = 1;
grove_taper_height_9mm = 1;

// 357 mag
body_diameter_38sp = 9;
rim_diameter_38sp = 11;
rim_thickness_38sp = 1;


// caliber sockets
// 9mm
translate([-10, 0, bullet_holder_height/2]) {
	difference() {
		union() {
			// bullet holder inside shape
			difference() {
				cylinder(d=bullet_holder_diameter, h=bullet_holder_height, center=true);
				cylinder(d=body_diameter_9mm, h=bullet_holder_height+2, center=true);
				translate([0, 0, -11]) {
					cylinder(d=body_diameter_9mm+2, h=bullet_holder_height/2, center=true);
				}
			}
			// locking pins
			translate([bullet_holder_diameter/2-0.2, 0, -(bullet_holder_height/2)+6]) {
				sphere(d=4, $fn=30);
			}
			translate([-bullet_holder_diameter/2+0.2, 0, -(bullet_holder_height/2)+6]) {
				sphere(d=4, $fn=30);
			}
			translate([0, 0, 15]) {
				rotate([180, 0, 0]) {
					difference() {
						cylinder(d=body_diameter_9mm, h=grove_straight_height_9mm*2-0.1, center=true);
						union() {
							translate([0, 0, -0.49]) {
								cylinder(d=grove_diameter_9mm, h=grove_straight_height_9mm, center=true);
							}
							translate([0, 0, 0.49]) {
								cylinder(d1=grove_diameter_9mm, d2=body_diameter_9mm, h=grove_taper_height_9mm, center=true);
							}
						}
					}
				}
			}
			translate([0, 0, 19]) {
				difference() {
					cylinder(d=body_diameter_9mm, h=grove_straight_height_9mm*2, center=true);
					cylinder(d=grove_diameter_9mm, h=grove_straight_height_9mm*2+0.1, center=true);
				}
			}
		}
		translate([0, 0, 3]) {
			cube(size=[2, bullet_holder_diameter+5, bullet_holder_height], center=true);
		}
	}
}
