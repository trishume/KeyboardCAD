$fn=60;
flatten_h=1;

module marker(size) {
  translate([0,0,size-flatten_h]) {
    difference() {
      sphere(size);
      translate([0,0,-size*2+flatten_h]) cube(size*2,center=true);
      translate([0,0,-size+2]) {
        cylinder(h=4,d=3,center=true);
        translate([0,0,2]) sphere(d=3);
      }
    }
  }
}

marker(5);
translate([0,50,0]) marker(7.5);
translate([50,0,0]) marker(10);
