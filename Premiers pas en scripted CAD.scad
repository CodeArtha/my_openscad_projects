//$fn=200;

color("blue")
    linear_extrude(height=50, twist=180, scale=0)
        circle(10, $fn=3);

translate([10,10,0]){
    rotate(a=90, v=[0,1,0])
    cylinder(15,5,10);
    //cylinder(height, radius1, radius2)
    //but you can specify a different order
    cylinder(r1=2, h=20, r2=7);
}