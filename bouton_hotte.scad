dia_tige = 6.2;
dia_flat = 4.55;
dia_bouton = 35;
hauteur_tige = 14;
hauteur_bouton = 25.5;

$fn = 150;


difference() {
	union() {
		translate([0, 0, 4]) {
			cylinder(d=dia_tige+6, h=hauteur_tige);
			cylinder(d=dia_tige+10, h=hauteur_tige/3);
		}
	}
	//Négatif de la tige
	translate([0, 0, 4.1]) {
		difference() {
			cylinder(d=dia_tige, h=hauteur_tige);
			translate([-dia_tige/2, dia_flat-(dia_tige/2)+0.1, -1]) {
				cube(size=[dia_tige, dia_tige, hauteur_tige+2]);
			}
		}
	}
}

//extérieur bouton
difference() {
	cylinder(d=dia_bouton, h=hauteur_bouton);
	translate([0, 0, 4.1]) {
		cylinder(d=dia_bouton-6, h=hauteur_bouton-4);
	}
}
