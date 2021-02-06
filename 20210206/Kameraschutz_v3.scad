// Halter

a=2;
b=20;

//translate([-18,8.5,0])
//rotate([-90,0,0])
//text("αlpha");

//$fn=10;

difference() {
difference() {
cube([60-b,3+7+3+a,20],true);
translate([-17,7,3])
rotate([-90,0,0])
linear_extrude(4)
text("αlpha");
}
union() {
translate([0,0,5])
cube([70-b,7+a,20],true);

}
}
/*

$fn=3;

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

*/