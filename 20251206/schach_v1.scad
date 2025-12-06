f = 0.8;
b = 50;
n = 0.93;

$fn=180;

translate([0,50])
square([0.5*b,0.5*b],true);

translate([0,100])
difference()
{
square([b*f,b*f],true);
square([b*f*0.75,b*f*0.75],true);
}

translate([0,150])
difference()
{
square([b*f,b*f],true);
translate([b*f*0.25*n,b*f*0.25*n])
square([b*f*0.5*n,b*f*0.5*n],true);
}

translate([0,200])
difference()
{
square([b*f,b*f],true);
circle(b*f*0.5*n);
}

translate([0,250])
difference()
{
square([b*f,b*f],true);
rotate(45,[0,0,1])
square([b*f*1/sqrt(2)*n,b*f*1/sqrt(2)*n],true);
}

translate([0,300])
difference()
{
square([b*f,b*f],true);
translate([b*0.55,b*0.0])
rotate(45,[0,0,1])
square([b*f*1/sqrt(2)*n,b*f*1/sqrt(2)*n],true);
translate([-b*0.55,b*0.0])
rotate(45,[0,0,1])
square([b*f*1/sqrt(2)*n,b*f*1/sqrt(2)*n],true);
translate([b*0.0,b*0.55])
rotate(45,[0,0,1])
square([b*f*1/sqrt(2)*n,b*f*1/sqrt(2)*n],true);
translate([-b*0.0,b*-0.55])
rotate(45,[0,0,1])
square([b*f*1/sqrt(2)*n,b*f*1/sqrt(2)*n],true);
}
