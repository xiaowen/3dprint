r=12; // radius of the outer circle
r2=7; // radius of the inner circle
r3=5; // width of the stick
h=160;
h2 = 100; // height of each branch

linear_extrude(height=20) {
translate([-r2-(r-r2)/2.0, 0]) {
  difference() {
    circle(r, center=true);
    circle(r2, center=true);
    translate([0,-r])square([2*r,2*r], center=true);
  }
  translate([-r2-(r-r2)/2, 0]) {
    translate([0, -(r-r2)*2]) square([(r-r2), (r-r2)*4], center=true);
    translate([0, -(r-r2)*4]) circle((r-r2)/2, center=true);
  }
}

translate([0, -h/2]) {
  square([r3, h], center=true);
  translate([0, h/2]) circle(r3/2);
  translate([-r/2, -h/2]) square([r, r3], center=true);
  translate([-r, -h/2]) circle(r3/2);
  translate([0, -h/2]) circle(r3/2);
}

translate([0, -80])
rotate(-15)
translate([0, h2/2]) {
  translate([0, h2/2]) circle(r3/2, center=true);
  square([r3, h2], center=true);
}

translate([0, -160])
rotate(-15)
translate([0, h2/2]) {
  translate([0, h2/2]) circle(r3/2, center=true);
  square([r3, h2], center=true);
}
}
