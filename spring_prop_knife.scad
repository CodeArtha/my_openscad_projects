//blade
translate([-50, 0, 0]) {
	polyhedron(
		points=[
			// base
			[0,0,0],
			[1.5,11,0],
			[3,0,0],
			[1.5,-11,0],

			// near tip level
			[0.5,0,82],
			[1.5,8,82],
			[2.5,0,82],
			[1.5,-8,82],

			// tip
			[1.2,0,100],
			[1.5,0.5,100],
			[1.8,0,100],
			[1.5,-0.5,100],
		],
		faces=[
			// first level
			[0,1,2,3], //bottom face
			[0,1,5,4], //TL
			[1,2,6,5], //TR
			[2,3,7,6], //BR
			[3,0,4,7], //BL

			// second level
			[4,5,9,8],
			[5,6,10,9],
			[6,7,11,10],
			[7,4,8,11],

			// tip
			[8,9,10,11],
		]
	);

	//blade socket
	translate([1.5, 0, -12.5]) {
		difference() {
			union() {
				cube(size=[3, 22, 25], center=true);
				cube(size=[6, 10, 15], center=true);
			}
			translate([0, 0, -6]) {
				cube(size=[10, 11, 15], center=true);
			}
		}
		//spike
		translate([0, 0, -3]) {
			cylinder(d1=0, d2=5, h=10, center=true);
		}
		// elastic's post
		translate([1.7, 0, 5]) {
			rotate([0, 90, 0]) {
				cylinder(d=1.5, h=3, $fn=20);
				translate([0, 0, 3]) {
					cylinder(d=3.5, h=1, $fn=20);
				}
			}
		}
	}
}


// rail guides
translate([-2, -13, -30]){
	linear_extrude(130){
		polygon(
			points=[
				[0,0],
				[7,0],
				[7,6],
				[5.1,6],
				[5.1,1.9],
				[1.9,1.9],
				[1.9,6],
				[0,6],
				[0,4.5],
				[-3,4.5],
				[-3,1.5],
				[0,1.5]
			]
		);
		translate([7, 26, 0]) {
			rotate([0, 0, 180]) {
				polygon(
					points=[
						[0,0],
						[7,0],
						[7,1.5],
						[10,1.5],
						[10,4.5],
						[7,4.5],
						[7,6],
						[5.1,6],
						[5.1,1.9],
						[1.9,1.9],
						[1.9,6],
						[0,6],
					]
				);
			}
		}
	}
	// elastic's post
	translate([6.2, 3.5, 22.5]) {
		rotate([0, 90, 0]) {
			cylinder(d=1.5, h=2.2, $fn=20);
			translate([0, 0, 2.2]) {
				cylinder(d=3.5, h=1, $fn=20);
			}
		}
	}
	// elastic's post
	translate([6.2, 22.5, 22.5]) {
		rotate([0, 90, 0]) {
			cylinder(d=1.5, h=2.2, $fn=20);
			translate([0, 0, 2.2]) {
				cylinder(d=3.5, h=1, $fn=20);
			}
		}
	}
}

// handle scale with mechanism
translate([-5, 0, 70]) {
	// coffin back
	difference() {
		rotate([0, -90, 0]) {
			linear_extrude(2.5){
				polygon(
					points=[
						[0,-20],
						[35,-15],
						[35,15],
						[0,20],
						[-115,12.5],
						[-115,-12.5],
					]
				);

			}
		}

		// cross design
		translate([-3.2, 0, 0]) {
			translate([0, 0, -30]) {
				cube(size=[2, 2, 90], center=true);
			}
			translate([0, 0, -5]) {
				cube(size=[2, 20, 2], center=true);
			}
		}
	}


	//coffin border
	difference() {
		union() {
			rotate([0, -90, 180]) {
				linear_extrude(13){
					difference() {
						polygon(
							points=[
								[0,-20],
								[35,-15],
								[35,15],
								[0,20],
								[-115,12.5],
								[-115,-12.5],
							]
						);
						offset(delta=-2.5){
							polygon(
								points=[
									[0,-20],
									[35,-15],
									[35,15],
									[0,20],
									[-115,12.5],
									[-115,-12.5],
								]
							);
						}
					}
				}
			}

			// blade slot block
			translate([0, -15, 30]) {
				cube(size=[13, 30, 5]);
			}

			// screw posts
			translate([6.5, 17, 0]) {
				rotate([0, 90, 0]) {
					cylinder(d=5, h=13, center=true, $fn=20);
				}
			}
			// screw posts
			translate([6.5, -17, 0]) {
				rotate([0, 90, 0]) {
					cylinder(d=5, h=13, center=true, $fn=20);
				}
			}
		}

		// blade slot
		translate([6.5, 0, 32]) {
			cube(size=[3, 22, 10], center=true);
		}

		// hole at the back
		translate([7, 0, -115]) {
			cube(size=[13.9, 22, 29.9], center=true);
		}
	}
}

// handle scale cover
//translate([10.5, 0, 70]) {
translate([50, 0, 70]) {
	difference() {
		rotate([0, -90, 0]) {
			linear_extrude(2.5){
				polygon(
					points=[
						[0,-20],
						[35,-15],
						[35,15],
						[0,20],
						[-115,12.5],
						[-115,-12.5],
					]
				);

			}
		}

		// cross design
		translate([0.7, 0, 0]) {
			translate([0, 0, -30]) {
				cube(size=[2, 2, 90], center=true);
			}
			translate([0, 0, -5]) {
				cube(size=[2, 20, 2], center=true);
			}
		}
	}

	translate([-8.8, 0, -113.8]) {
		cube(size=[13, 22, 2.5], center=true);

		// screw posts
		translate([0, 0, 2]) {
			rotate([0, 90, 0]) {
				cylinder(d=5, h=13, center=true, $fn=20);
			}
		}
	}
}
