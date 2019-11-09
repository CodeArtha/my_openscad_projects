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

// body structure
translate([50, 0, 55]) {
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
						cylinder(d=4, h=14, center=true);
						translate([3, -.4, -5]) {
							sphere(d=4);
						}
					}
					translate([0, -15, 3]) {
						cylinder(d=4, h=14, center=true);
						translate([-3, .4, -5]) {
							sphere(d=4);
						}
					}
				}
			}
		}
	}
}

//body to handle rod linkage
// can't seem to figure out how to make a valid trapezoid
translate([30, 13, 90]) {
	rotate([-90,0,0]){
		difference() {
			polyhedron(
				points=[
				// bottom rect
				[0,0,0],   //0
				[40,0,0],  //1
				[40,80,0], //2
				[0,80,0],  //3
				//top rect
				[5,70,25], //4
				[5,10,25], //5
				[35,10,25],//6
				[35,70,25] //7
				],
				faces=[    // NOTE: when declaring the faces, the points have to be ordered so that when wrapping the Left Hand's fingers in the same order the thumb points outside of the polyhedron.
				[0,1,2,3], //bottom
				[0,5,6,1],
				[1,6,7,2],
				[2,7,4,3],
				[3,4,5,0],
				[7,6,5,4], //top
				]
			);
			translate([20, 40, 15]) {
				cylinder(d=rod_diameter, h=rod_diameter*2+1, center=true);
			}
		}
	}
}


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
		translate([0, 0, 5]) {
			cube(size=[2, bullet_holder_diameter+5, bullet_holder_height], center=true);
		}
	}
}
