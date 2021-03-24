//
// Created by Patrick Bailey iQless.com :)
//
///////////////////////////////////////////
$fn = 200;

inner_dia = 33.7;
outer_dia = 44;
hole_depth = 30;
angle = 5;
cone_bottom = 60;

twoX4_dia = 35;
twoX4_thickness = 10;


difference(){
  union(){
    color("red"){
      translate([0, 0, - 3 * hole_depth /2]){
        rotate(angle, [0, - 1, 0]){
          difference(){
            linear_extrude(3 * hole_depth){
              circle(d = outer_dia);
            }

            translate([0, 0, 2 * hole_depth + 1]){
              linear_extrude(hole_depth + 1){
                circle(d = inner_dia);
              }
            }
          }
        }
      }
    }


    color("blue"){
      cylinder(cone_bottom, 3 * outer_dia / 4, 0);
    }



    color("orange"){
      difference(){

        linear_extrude(twoX4_thickness){
          hull(){
            translate([twoX4_dia, 0]){
              circle(d = twoX4_dia);
            }
            translate([ - twoX4_dia, 0]){
              circle(d = twoX4_dia);
            }
          }
        }


        //Screw holes
        translate([twoX4_dia, 0, - 1]){
          cylinder(twoX4_thickness + 2, 2.5, 2.5, $fn= 6);
            translate([0, 0, twoX4_thickness / 2 +1]){
              cylinder(twoX4_thickness / 2 + 1, 5, 5, $fn = 6);
            }
          }
        translate([ - twoX4_dia, 0, - 1]){
          cylinder(twoX4_thickness + 2, 2.5, 2.5, $fn= 6);
          translate([0, 0, twoX4_thickness / 2 +1]){
            cylinder(twoX4_thickness / 2 + 1, 5, 5, $fn = 6);
          }
        }
      }
    }
  }



  color("purple"){

    translate([0, 0, - 4 * twoX4_dia/ 2]){
      cube(4 * twoX4_dia, true);
    }
  }



  translate([cone_bottom / 2, 0, 0]){
    rotate(- 90, [0, 1, 0]){
      linear_extrude(cone_bottom){
        polygon(points =
        [[0, twoX4_dia / 2], [0, 2 * twoX4_dia],
        [hole_depth, 2 * twoX4_dia],
        [hole_depth, 40],
        [3 / 5* hole_depth, twoX4_dia / 2]
        ]);
        polygon(points =
        [[0, - twoX4_dia /2], [0, - 2 * twoX4_dia],
        [hole_depth, - 2 * twoX4_dia],
        [hole_depth, - 40],
        [3 / 5 * hole_depth, - twoX4_dia/ 2]
        ]);
      }
    }
  }


  color("pink"){

    translate([0, 0, - 3 * hole_depth /2]){
      rotate(angle, [0, - 1, 0]){
        translate([0, 0, 2 * hole_depth + 1]){
          linear_extrude(2 * hole_depth + 1){
            circle(d = inner_dia);
          }
        }
      }
    }
  }
}
