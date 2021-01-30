// Halter

$fn=60;

linear_extrude(80)
difference() {
     m1();
     m2();
}

module m1() {
     circle(3);
     translate([33,0,0])
     circle(3);
     translate([33+14.5,10,0])
     circle(3);
     translate([0,23.5,0]) {
         translate([8.5-1,0,0])
         rotate(72.5)
         square([50,6], true);
         translate([24.5+1,0,0])
         rotate(-72.5)
         square([50,6], true);
     }
     translate([33/2,50-2.3,0])
     circle(4.3);
     translate([33/2,28,0])
     difference() {
         scale([3,10,1])
         circle(2);
         scale([3,10,1])
         circle(1);
         translate([0,-10,0])
         square([50,16+20], true);
     }

     translate([40-0.9,(5.5+6)/2+3-0.2,0])
     rotate(17.5/2)
     difference() {
         circle(5.5+6);
         circle(5.5);
         translate([0,10,0])
         square([30,20], true);
     }
}


module m2() {
     translate([40-0.9,(5.5+6)/2+3-0.2,0])
     rotate(17.5/2)
     difference() {
         circle(5.5+9);
         circle(5.5+6);
         translate([0,10,0])
         square([30,20], true);
     }
}