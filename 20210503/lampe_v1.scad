res = 180;
//res = 18;

//cylinder(h=1, r=116/2, center=true, $fn=res);

difference() {
    union() {
    gestell();
    difference() {
    translate([0,0,4])
    cylinder(h=2, r=40, center=true, $fn=res);
    translate([0,0,4])
    cylinder(h=30, r=38, center=true, $fn=res);
    }
    }
    translate([-100,-100,5])
    cube([200,200,200]);
}

module gestell() {

translate ([0,0,10]) {
  difference() {
    cylinder(h=20, r=42, center=true, $fn=res);
    union() {
      translate ([0,0,-2])
      cylinder(h=20, r=40, center=true, $fn=res);
      cylinder(h=26, r=36, center=true, $fn=res);
    }
  }
}


for (i = [0,120,240]) {
  rotate([0,0,i])
  translate([1.65+7.65+40,0,10])
  union() {
    translate([0.9+7.65+1.75,0,-7.5])
    rotate([0,90,0])
    cylinder(h=3.5, r=1.8, center=true, $fn=res);
    difference() {
      cube([2+15.3, 5, 20], center=true);
      translate([3+5,0,8])
      rotate([0,-45,0])
      cube([2+15.3, 6, 30], center=true);
    }
  }
}

}