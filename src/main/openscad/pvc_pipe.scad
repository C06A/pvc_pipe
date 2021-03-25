//
// Created by Patrick Bailey iQless.com :)
//
///////////////////////////////////////////

// Diametr of the PVC pipe
inner_dia = 33.7; // [::float]
outer_dia = ceil(inner_dia * 1.3); // 44;

// How far PVC pipe goes in
hole_depth = 30; // [10:50]

// Angel of PVC pipe from horizen
angle = 5; // [15]

// How big is additional support
cone_bottom = 60; // [::non-negative integer]

// How wide will be base
twoX4_dia = outer_dia; // [35:55]

// How thick will be base
twoX4_thickness = 10; // [5:25]

color("red")
  receptical();

color("blue")
  support();

color("orange")
  base();

module receptical() {
  translate([0, 0, twoX4_thickness / 2]) {
    rotate(angle, [0, -1, 0]) {
      difference() {
        linear_extrude(hole_depth) {
          circle(d = outer_dia);
        }
      }
    }
  }
}

module base() {
  linear_extrude(twoX4_thickness) {
    hull() {
      for (i = [- 1, 1]) {
        translate([i * twoX4_dia / 2, 0]) {
          circle(d = twoX4_dia);
        }
      }
    }
  }
}
