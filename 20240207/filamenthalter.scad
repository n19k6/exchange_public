

module a() {
import("C:/Users/Bernd/Desktop/Raphael/Work/20240118_filament_rollenhalter/Filament_Stand_BIG_-_one_Side.stl");
}

//a();

/*

projection(cut=false){
translate([0,0,-10])
a();
}

projection() translate([0,0,0]) {
//a();
cube([20,20,100], true);
$fn=30;
translate([-90.5,61.5,0])
cylinder(h=200,r=2,center=true);
translate([90.5,61.5,0])
cylinder(h=200,r=2,center=true);
}

rolle:
durchmesser 20 cm
staerke wand 2 mm
innendurchmesser 18 cm
abstand waende 6 cm, mittelpunkt zu mittelpunkt 6,2 cm


*/

module b() {
    import("C:/Users/Bernd/Desktop/Raphael/Work/20240118_filament_rollenhalter/filamenthalter_1.dxf");
}

module c() {
    import("C:/Users/Bernd/Desktop/Raphael/Work/20240118_filament_rollenhalter/filamenthalter_2.dxf");
}

module d(radius) {
    $fn=30;
    difference() {
    cylinder(h=30,r=radius,center=true);
    translate([0,-30,0])
    cube([300,150,100], true);
    }
}

projection() {
cube([20,20,20], true);
difference() {
linear_extrude(height=20, center=true) c();
linear_extrude(height=40, center=true) b();
translate([0,0,0])
d(radius=90);
}

translate([0,-100,0])
d(radius=100);

}