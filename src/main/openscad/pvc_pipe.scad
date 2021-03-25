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

// How wide will be base
twoX4_dia = outer_dia; // [35:55]

// How thick will be base
twoX4_thickness = 10; // [5:25]

// Diameter of the screw head
screw_head_dia = 5;

// Diameter of the screw
screw_dia = 2.5;

difference() {
  pig();

  color("pink") pipe();
}

module pig() {
  color("red") receptical();

  color("blue") support();

  color("orange") base();
}


module receptical() {
  translate([0, 0, twoX4_thickness / 2]) {
    rotate(angle, [0, - 1, 0]) {
      difference() {
        linear_extrude(hole_depth) {
          circle(d = outer_dia);
        }
      }
    }
  }
}

module base() {
  difference() {
    linear_extrude(twoX4_thickness) {
      hull() {
        for (i = [- 1, 1]) {
          translate([i * twoX4_dia, 0]) {
            circle(d = twoX4_dia);
          }
        }
      }
    }

    for (i = [- 1, 1]) {
      translate([i * twoX4_dia, 0, - 1])
        screwHoll();
    }
  }
}

module support() {
  translate([outer_dia / 5, 0, twoX4_thickness]) {
    cylinder(hole_depth - twoX4_thickness / 2, outer_dia / 2, 0);
  }
}

module pipe() {
  rotate(angle, [0, - 1, 0]) {
    translate([0, 0, twoX4_thickness / 2]) {
      cylinder(hole_depth, d = inner_dia);
    }
  }
}

module screwHoll() {
  cylinder(twoX4_thickness + 2, screw_dia, screw_dia, $fn = 6);
  translate([0, 0, twoX4_thickness / 2 + 1]) {
    cylinder(twoX4_thickness / 2 + 1, screw_head_dia, screw_head_dia, $fn = 6);
  }
}
