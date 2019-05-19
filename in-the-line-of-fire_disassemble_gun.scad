dia_rim = 11;
dia_casing = 9;
dia_bore = 8.6;
length_casing = 30;
length_bore = 90;
length_rim = 1;

translate([0, 47, 0]){
	cube(size=[40, length_bore, 25], center=true);
}
translate([0, -37, 0]) {
	cube(size=[40, 70, 25], center=true);
}

translate([40, 0, 0]) {
	rotate([-90, 0, 0]) {
		cylinder(d=dia_bore, h=length_bore+1);
		cylinder(d=dia_casing, h=length_casing);
		cylinder(d=dia_rim, h=length_rim);
	}
}
