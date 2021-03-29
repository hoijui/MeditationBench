
space = 0.3;

// Thicknes of the used wood (material thickness)
matThick = 2.5;

seatWidth = 15;

seatLength = 50;

legHeightFront = 12;
legHeightMiddle = legHeightFront + 2;
legHeightBack = legHeightMiddle + 1;
legHeight = legHeightMiddle;
legDistance = 10;
legRoundingRadius = 0.4 * legHeight;

boltWidth = matThick * 1.5;

explosionDistance = 5;

module seat() {
	color("blue") {
		difference() {
			// main part of the seat
			translate([- seatLength / 2, 0, 0])
				cube([seatLength, seatWidth, matThick]);
			// hole for left bolt #1
			translate([-(matThick / 2) - (legDistance / 2), 0, 0])
				translate([0, -space, -space])
				cube([matThick, boltWidth + space, matThick + 2*space]);
			// hole for left bolt #2
			translate([-(matThick / 2) - (legDistance / 2), seatWidth - boltWidth, 0])
				translate([0, 0, -space])
				cube([matThick, boltWidth + space, matThick + 2*space]);
			// hole for right bolt #1
			translate([-(matThick / 2) + (legDistance / 2), 0, 0])
				translate([0, -space, -space])
				cube([matThick, boltWidth + space, matThick + 2*space]);
			// hole for right bolt #2
			translate([-(matThick / 2) + (legDistance / 2), seatWidth - boltWidth, 0])
				translate([0, 0, -space])
				cube([matThick, boltWidth + space, matThick + 2*space]);
		}
	}
}

module leg() {
	color("red") {
		/*
		intersection() {
			// main part of the leg
			cube([legHeight, seatWidth, matThick]);
			// this makes it round on the bottom
			//translate([- legRoundingRadius + legHeight, seatWidth / 2, 0])
			//	cylinder(3 * matThick, legRoundingRadius, legRoundingRadius, true, $fn = 1000);
			translate([0, seatWidth /2, 0])
				translate([- legRoundingRadius + legHeight, 0, 0])
					cylinder(3 * matThick, legRoundingRadius, legRoundingRadius, true, $fn = 1000);
		};
		*/
		linear_extrude(matThick) {
			polygon([[0, 0], [legHeightFront, 0], [legHeightMiddle, seatWidth  / 2], [legHeightBack, seatWidth], [0, seatWidth]]);
		};
		// bolt #1 of the leg
		translate([- matThick, 0, 0])
			cube([matThick, boltWidth, matThick]);
		// bolt #2 of the leg
		translate([- matThick, seatWidth - boltWidth, 0])
			cube([matThick, boltWidth, matThick]);
	}
}

module legStanding() {
	rotate(90, [0, 1, 0])
		leg();
}

module legLeft() {
	translate([-(matThick / 2) - (legDistance / 2), 0, 0])
		legStanding();
}

module legRight() {
	translate([-(matThick / 2) + (legDistance / 2), 0, 0])
		legStanding();
}

/*
*/

module viewAssembled() {

	seat();
	legLeft();
	legRight();
}

module viewExploded() {

	seat();
	translate([0, 0, -explosionDistance])
		union() {
			legLeft();
			legRight();
		};
}

module viewPlate() {

	seat();
	translate([seatLength / 2 + matThick + space, 0, 0]) {
		leg();
		translate([legHeightBack + matThick + space, 0, 0])
			leg();
	};
}

translate([0, 0, legHeightBack + 30 * space])
	viewAssembled();
viewPlate();
translate([0, 0, -(50 * space)])
	viewExploded();

//leg();



//cube([legHeight, seatWidth, matThick]);
/*
polygon([[0, 0], [legHeightFront, 0], [legHeightMiddle, seatWidth  / 2], [legHeightBack, seatWidth], [0, seatWidth]]);
translate([0, seatWidth /2, 0])
	translate([- legRoundingRadius + legHeight, 0, 0])
	%circle(legRoundingRadius, $fn = 1000);
*/