include <gear_generator.scad>

// Main body
difference() {
	// Tube
	difference(){
		union(){
			cylinder(d=20, h=200);
			// reinforcement ring on the bottom
			cylinder(d1=22, d2=21, h=15);
			//reinforcement ring at the top
			translate([0, 0, 195]) {
				cylinder(d1=21, d2=21.5, h=6);
			}
		}
		translate([0, 0, -1.001]){
			cylinder(d=16, h=250);
			cylinder(d1=18, d2=17, h=20);
		}
		// square hole for the wheel
		translate([0, -10, 180]) {
			cube([7,10,20], center = true);
		}
	}

	// Twist attach for rubber nozzle
	translate([0, 0, 4.999]){
		difference() {
			linear_extrude(10,center=true){
				square(size=[4, 22], center=true);
			}
			difference() {
				cylinder(d=25, h=12, center=true);
				cylinder(d=20, h=12, center=true);
			}
		}
		translate([0, 0, 1]) {
			linear_extrude(4){
				rotate([0, 0, 23]) {
					square(size=[4, 50], center=true);
				}
			}
		}
	}
}

// Wheel holder
translate([-5.5, -12.2, 180]) {
	rotate([0, 90, 0]) {
		linear_extrude(2){
			difference() {
				union(){
					circle(r=5.1);
					polygon(
						points=[
							[4,-3],
							[-4,-3],
							[-12,5],
							[12,5]
						]
					);
				}
				circle(r=1.5);
			}
		}
	}
	translate([9, 0, 0]) {
		rotate([0, 90, 0]) {
			linear_extrude(2){
				difference() {
					union(){
						circle(r=5.1);
						polygon(
							points=[
								[4,-3],
								[-4,-3],
								[-12,5],
								[12,5]
							]
						);
					}
					circle(r=1.5);
				}
			}
		}
	}
	//put wheel code here for test fitting
}

// wheel
translate([-50, 0, 0]) {
	rotate([0, 90, 0]) {
		difference() {
			union(){
				translate([0, 0, 1.75]) {
					cylinder(d=8,h=6.5,center=true);
				}
				spur_gear (modul=0.4, tooth_number=25, width=4, bohrung=-10, pressure_angle=20, schraegungswinkel=0, optimized=true);
				translate([0, 0, 3.5]) {
					spur_gear (modul=0.1, tooth_number=180, width=1.5, bohrung=-11, pressure_angle=30, schraegungswinkel=0, optimized=true);

				}
				rotate([0, 180, 0]) {
					spur_gear (modul=0.1, tooth_number=180, width=1.5, bohrung=-11, pressure_angle=30, schraegungswinkel=0, optimized=true);
				}
			}
			translate([0, 0, 1.75]) {
				cylinder(d=3.2, h=10, center=true);
			}
		}
	}
}

// Piston
translate([50,0,1.5]){
	// O-ring groves and piston head
	difference(){
		cylinder(d=15.5, h=25);

		translate([0,0,2]){
			difference(){
				cylinder(d=18  , h=1.5);
				cylinder(d=14.5, h=1.5);
			}
		}

		translate([0,0,15]){
			difference(){
				cylinder(d=18  , h=1.5);
				cylinder(d=14.5, h=1.5);
			}
		}
	}

	// smaller cylinder on top of the piston
	translate([0,0,23])cylinder(d=13, h=5);

	// rack gear
	translate([-1.5,7,100]){
		rotate([0,90,0]){
			rack(modul=0.4, length=150, hoehe=9, width=3, pressure_angle=20, schraegungswinkel=0);
		}
	}
	// gear backing
	translate([0, -2, 25]) {
		linear_extrude(150){
			polygon(
				points=[
					[-7.4,  0],
					[ 7.4,  0],
					[ 6.62, -2],
					[ 2.5, -4],
					[-2.5, -4],
					[-6.62, -2],
					]
			);
		}
	}
	// piston cap
	translate([0, 0, 173.75]) {
		rotate([0,0,22.5]){
			cylinder(d=22, h=2.5, $fn=8);
		}
	}
}
