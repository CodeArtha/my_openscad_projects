scope_dia = 55;
led_dia = 10;
//$fn = 50;

//difference(){
//    cylinder(d=scope_dia + 6 * led_dia, h=30, center=true);
//    cylinder(d=scope_dia, h=31, center=true);
//}

// led
translate([0, 0, -8]) {
	cylinder(d=led_dia, h=led_dia-2, center=true);
	translate([0, 0, 4]) {
		sphere(d=led_dia);
	}
}

%cylinder(d2=led_dia*3, d1=led_dia, h=16, center=true);
