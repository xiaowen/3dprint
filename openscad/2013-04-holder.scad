back_thick = 8;
back_height = 12;
back_radius = 10;
cyl_height = 13;
outer_radius = 3.3;
inner_radius = 2.5;

union() {
  hull() {
    linear_extrude(height=back_thick) {
      polygon(points=[[-outer_radius, 0], [back_height, -back_radius], [back_height, back_radius]]);
    }
    cylinder(h=back_thick, r=outer_radius, center=false);
  }
  cylinder(h=back_thick+cyl_height, r=inner_radius, center=false);
}
