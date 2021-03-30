// MeditationSeat.scad - A simple Meditation seat,
// requireing only one size of planks (+ screws).
// This is a 3D Model (CAD), which can be edited
// with the free software OpenSCAD.
//
// License:
//   Name: Creative Commons Attribution Share Alike 4.0 International
//   URL: https://creativecommons.org/licenses/by-sa/4.0/legalcode
//   SPDX-Identifier: CC-BY-SA-4.0
// Author: Robin Vobruba <robin.vobruba@gmail.com>
//
// NOTE
// The most important parameters

angle = 12; // [degrees]
plankWidth = 110; // [mm]
plankHeight = 24; // [mm]
lengthUpper = 500; // [mm]
lengthLower = 180; // [mm]
heightLower = 173; // [mm]
sawWidth = 3; // [mm]

// WARNING
// If you change things after this line, things might go wrong.

legLower = heightLower - (plankHeight * (1 + 1/cos(angle))); // [mm]
legUpper = legLower + (plankWidth * sin(angle)); // [mm]
legDist = lengthLower/2 - 2*plankHeight; // [mm]
totalLength =
	lengthUpper + sawWidth +
	lengthLower + sawWidth +
	legLower + sawWidth +
	legDist + sawWidth +
	legUpper; // [mm]
BIG = 1000; // [mm]
siThick = 1; // [mm]
siWidth = 10; // [mm]
siStick = 15; // [mm]



color("red")
translate([0, 0, heightLower/2])
bigLabel("Assembled");

MeditationSeat();


color("green")
translate([0, 0, 2*heightLower])
bigLabel("Work-Template");

translate([0, totalLength / 2, 2*heightLower])
rotate([90, 0, 0])
MeditationSeatParts();



// Big textual label
module bigLabel(label, size=50) {
		
		%rotate([90, 0, 90])
		translate([(-(len(label) - 2) * size) / 2, 0, plankWidth + size])
		text(label, size, "Courier New");
	}


// The part touching the bottom
module sizeIndicator(size, label) {

		labelStr = is_undef(label) ?
			str(round(size) / 10.0, "cm") :
			label;
	
		translate([0, -siStick, 0])
		%union() {
			cube([size, siThick, siWidth]);
			cube([siThick, siStick, siWidth]);
			translate([size - siThick, 0, 0])
				cube([siThick, siStick, siWidth]);
			translate([(size - siThick) / 2, -siStick, 0])
				cube([siThick, siStick, siWidth]);
			translate([(size - siThick - ((len(labelStr) - 1) * siWidth)) / 2, -(siStick + siWidth), 0])
				text(labelStr, siWidth, "Courier New");
		}
	}
	
// The part touching the bottom
module bottom() {
		cube([plankWidth, plankHeight, lengthUpper]);
	
		translate([plankWidth/2, 0, 0])
		rotate([0, -90, 0])
		sizeIndicator(lengthUpper);
	}

// The part touching the ground
module ground() {
		cube([plankWidth, plankHeight, lengthLower]);
	
		translate([plankWidth/2, 0, 0])
		rotate([0, -90, 0])
		sizeIndicator(lengthLower);
	}

// A leg
module leg() {
		difference() {
			cube([plankWidth, plankHeight, legUpper]);
		
			// This makes the legs angled
			translate([0, BIG/2, legLower])
			rotate([0, -angle, 0])
			rotate([90, 0, 0])
			cube([BIG, BIG, BIG]);
		}
	
		translate([plankWidth, 0, 0])
		rotate([0, -90, 0])
		sizeIndicator(legUpper);
	
		translate([plankWidth/2, 0, 0])
		rotate([0, -90, 0])
		sizeIndicator(legLower);
	}
	
// The leg connector
module bridge() {
		cube([plankWidth, plankHeight, legDist]);
	
		translate([plankWidth/2, 0, 0])
		rotate([0, -90, 0])
		sizeIndicator(legDist);
	}

module MeditationSeatParts() {
	
	leg();
	
	posLeg2 = legUpper + legLower + sawWidth;
	translate([plankWidth, 0, posLeg2])
	rotate([0, 180, 0])
	leg();
	
	posBridge = posLeg2 + sawWidth;
	translate([0, 0, posBridge])
	bridge();
	
	posGround = posBridge + legDist + sawWidth;
	translate([0, 0, posGround])
	ground();
	
	posBottom = posGround + lengthLower + sawWidth;
	translate([0, 0, posBottom])
	bottom();
	
	posEnd = posBottom + lengthUpper;
	
	rotate([0, -90, 0])
	sizeIndicator(totalLength);
}

module MeditationSeat(size=15) {

	// The part touching the bottom
	translate([0, lengthUpper/2, legLower + plankHeight])
	rotate([0, -angle, 0])
	rotate([90, 0, 0])
	bottom();
	
	// The part touching the ground
	translate([0, lengthLower/2, 0])
	rotate([90, 0, 0])
	ground();
	
	translate([0, legDist/2, plankHeight])
	leg();
	
	translate([0, -legDist/2 - plankHeight, plankHeight])
	leg();
	
	rotate([90, 0, 0])
	translate([(plankWidth + plankHeight) / 2, plankHeight, -legDist/2])
	rotate([0, 0, 90])
	bridge();
}
