magRadius = 5;

shaftHeight = 10;
shaftThickness = 2;
shaftGlide = 0.5;

module shaft() {
  innerH = magRadius + shaftGlide;
  difference() {
    cylinder(h = shaftHeight, r = innerH + shaftThickness);
    translate([0,0,-0.1])
      cylinder(h = shaftHeight + 0.2, r = innerH);
  }
}

shaft();
