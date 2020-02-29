difference() {
	linear_extrude(height = 180){
		polygon(points = [
			[0,0],
			[45,0],
			[45,10],
			[45-10,15],
			[10,15],
			[0,10]
		]);
	}
	translate([42.1, 17, 15]) {
		rotate([0, 15, 90]) {
			linear_extrude(height = 1.8){
				polygon(points = [
					[0, 0],
					[-2, 0],
					[-5, 4.2],
					[-13, 4.2],
					[-13, 15.2],
					[-5, 15.2],
					[-2, 20.1],
					[-5, 25],
					[-13, 25],
					[-13, 36],
					[-5, 36],
					[-2, 40.2],
					[0, 40.2],
				]);
			}
		}
	}
	translate([45/2, 14.2, 80]) {
		rotate([-90, -90, 00]) {
			linear_extrude(height=2){
				text("RX 5700 XT", size=12, font="Liberation Sans", halign="left", valign="center",
				spacing=1.0, direction="ltr", language="en", script="latin");
			}
		}
	}
}
