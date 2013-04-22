r=4.7;
r2 = 5.2;
th = 1; // thickness
ipad_lng = 186;
over_lng = 10;

difference() {
  translate([0,0,+th/2-over_lng/2]) cube(size=[ipad_lng+2*th, r*2+2*th, r*2+th+over_lng], center=true);
  rotate(a=[0,-90,0]) cylinder(h=ipad_lng-r*2, r=r, center=true);
  translate([0,0,-200]) cube(size=[ipad_lng-r*2, r*2, 400], center=true);
  translate([ipad_lng/2-r,0,0]) sphere(r=r,center=true);
  translate([-ipad_lng/2+r,0,0]) sphere(r=r,center=true);
  translate([ipad_lng/2-r,0,-2000]) cylinder(h=4000, r=r, center=true);
  translate([-ipad_lng/2+r,0,-2000]) cylinder(h=4000, r=r, center=true);
  translate([0, -200, -200]) cube(size=[ipad_lng-over_lng*2, 400, 400], center=true);
}