$fn = 100;

wiggle = 0.5;
boardW = 18+wiggle*2;
boardH = 37+wiggle*2;
boardD = 5;


topBottom = 4;
frontBack = 3;
sides = 4;
slat = 2;
pad = 0.1;

cherryHole = 19.05;
cherryD = 10 + 8 - topBottom;
cherryPad = 3;
cavityW = cherryHole + cherryPad*2;

jackBump = topBottom+boardD+cherryD/2;

height = topBottom*2+boardD+cherryD;
caseW = cavityW+sides*2;

difference() {
  cube([caseW,boardH+frontBack*2,height]);
  // interior
  translate([(caseW-boardW)/2,frontBack,topBottom])
    cube([boardW,boardH,height-topBottom/2]);
  // interior 2
  translate([sides,frontBack,topBottom+boardD])
    cube([cavityW,boardH,height-topBottom/2-boardD]);
  // top holder slats
  translate([sides-slat,frontBack,height-topBottom])
    cube([cavityW+slat*2,boardH,topBottom+pad]);
  // jack hole
  translate([caseW/2, topBottom+pad, jackBump])
    rotate([90,0,0]) cylinder(h=topBottom+pad*2,r=3.5);
}

topWidth = cavityW+slat*2;
translate([caseW+5,frontBack,0])
difference() {
  cube([topWidth,boardH,topBottom]);
  translate([(topWidth-cherryHole)/2,boardH-cherryPad-slat-cherryHole,-pad])
    cube([cherryHole,cherryHole,topBottom+pad*2]);
}

echo(caseW,boardH+frontBack*2,height);
