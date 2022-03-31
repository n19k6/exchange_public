// Halter

a=2-2;
b=20;

//translate([-18,8.5,0])
//rotate([-90,0,0])
//text("αlpha");

//$fn=10;

//cube([7,7,7],true);

difference() {
difference() {
cube([60-b,3+7+3+a,20],true);
translate([-17,7-1,3])
rotate([-90,0,0])
linear_extrude(4)
text("αlpha");
translate([-17+20,7-1,3+5])
rotate([-90,0,0])
linear_extrude(4)
scale([0.4,0.4,0.4])
text("7 mm");
}
union() {
translate([0,0,5])
cube([70-b,7+a,20],true);

}
}
