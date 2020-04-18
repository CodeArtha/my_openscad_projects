$fn = 80;

// Lock pin 1
translate([-60, 10, -9]) {
    difference(){
        cylinder(r=3.4, h=18, center=true);
        translate([0,0,9.1]){
            cylinder(r=2.5, h=12, center=true);
         }
         translate([0,0,5]){
                rotate([0,90,0]){
                    cylinder(r=0.8, h=10, center=true);
                }
         }
     }

     // bottom rivet head
	translate([0, 0, -9.9]) {
		difference() {
			scale([1, 1, 0.6]) {
				sphere(r=5.5);
			}
			translate([0, 0, 6]) {
				cube(size=[15, 15, 10], center=true);
			}
		}
	}
}
