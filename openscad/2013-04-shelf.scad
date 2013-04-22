lng = 200;
wd = 16;
r = 4;

// 5 doesn't fit in a hole that's 5.1
// 5, 3 can be a cover for screw
// a hole of radius 2.9 seems perfect for the screws we have

/*
translate([0, -30])
linear_extrude(height=5) {
  difference() {
    circle(r=7);
    circle(r=5.1);
  }
}
*/

translate([30, -30]) {
  linear_extrude(height=10) {
    difference() {
      circle(r=5);
      circle(r=2.9);
    }
  }
  //translate([0,0,10])
  //cylinder(h=2, r1=5, r2=4);
}

translate([30, 30]) {
  linear_extrude(height=10) {
    difference() {
      circle(r=5);
      circle(r=2.8);
    }
  }
  //translate([0,0,10])
  //cylinder(h=2, r1=5, r2=4);
}

module pin(center_x, center_y) {
  translate([center_x, center_y, 0]) {
    cylinder(h=20, r=r, center=false);
    translate([0,0,20]) cylinder(h=2, r1=r, r2=r-1, center=false);
  }
}

module hole(center_x, center_y) {
  translate([center_x, center_y, 0]) {
    cylinder(h=40, r=r+0.1, center=true);
  }
}

/*
translate([0, 20])
linear_extrude(height=5) {
  difference() {
    union() {
      square([lng, wd], center=true);
      translate([lng/2, 0]) circle(wd/2, center=true);
      translate([-lng/2, 0]) circle(wd/2, center=true);
    }
  //circle(r);
  //translate([lng/2, 0]) circle(r);
  //translate([-lng/2, 0]) circle(r);
    hole(0, 0);
    hole(lng/2, 0);
    hole(-lng/2, 0);
  }
}
*/
/*
union() {
  linear_extrude(height=5) {
    union() {
      square([lng, wd], center=true);
      translate([lng/2, 0]) circle(wd/2, center=true);
      translate([-lng/2, 0]) circle(wd/2, center=true);
    }
  }
  pin(0, 0);
  pin(lng/2, 0);
  pin(-lng/2, 0);
  //cylinder(h=20, r=r);
  //translate([lng/2, 0]) cylinder(h=20, r=r);
  //translate([-lng/2, 0]) cylinder(h=20, r=r);
}
*/