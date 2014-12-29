// cube([2,3,4]);

//linear_extrude(height = 6, center = false, convexity = 10)
//import (file = "/Users/tristan/Box/Dev/Projects/CADIdeas/OneKey/TrinketCutout2.dxf", layer = "Cuts");
$fn = 30;

module roundedRect(size, radius) {
x = size[0];
y = size[1];
z = size[2];

linear_extrude(height=z)
hull()
{
    // place 4 circles in the corners, with the given radius
    translate([(-x/2)+(radius/2), (-y/2)+(radius/2), 0])
    circle(r=radius);

    translate([(x/2)-(radius/2), (-y/2)+(radius/2), 0])
    circle(r=radius);

    translate([(-x/2)+(radius/2), (y/2)-(radius/2), 0])
    circle(r=radius);

    translate([(x/2)-(radius/2), (y/2)-(radius/2), 0])
    circle(r=radius);
}
}

size = 39.5;
plate = 6;
thinPlate = 3;
holeOffset = size/2 - 6;
holeRad = 1.75;
trinketWidth = 16;
trinketLength = 31;
corner = 5;
smallHole = 1.5;
difference() {
    // translate([0,0,plate]) cube([size,size,plate*2],center=true);
    roundedRect([size-corner,size-corner,plate+thinPlate],radius=corner);
    translate([ holeOffset, holeOffset,0]) cylinder(h=20,r=holeRad,center=true);
    translate([-holeOffset, holeOffset,0]) cylinder(h=20,r=holeRad,center=true);
    translate([ holeOffset,-holeOffset,0]) cylinder(h=20,r=holeRad,center=true);
    translate([-holeOffset,-holeOffset,0]) cylinder(h=20,r=holeRad,center=true);
    translate([(size-trinketLength)/2,0,plate/2+thinPlate]) cube([trinketLength+0.1,trinketWidth,plate+0.2],center=true);

    translate([15.21,5.72,0]) cylinder(h=20,r=smallHole,center=true);
    translate([15.21,-5.72,0]) cylinder(h=20,r=smallHole,center=true);
    translate([-6.38,-5.72,0]) cylinder(h=20,r=smallHole,center=true);
    translate([-6.38,5.72,0]) cylinder(h=20,r=smallHole,center=true);
}
