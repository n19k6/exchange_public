/*

comments

*/

$fn=60;

points = [
    [0,6,6],
    [0,6,38],
    [0,38,6]
];

points_2 = [
    [0,6,6],
    [0,6,12],
    [0,12,6]
];

faces = [
    [0,1,2]
];

hull() {
    polyhedron(points, faces);
    translate([3,0,0])
    polyhedron(points, faces);
}

translate([15,0,0])
hull() {
    polyhedron(points_2, faces);
    translate([3,0,0])
    polyhedron(points_2, faces);
}

schenkel();
translate([0,6,0])
rotate(90,[1,0,0])
schenkel();

module schenkel() {
    difference() {
        cube([18,38,6]);
        translate([9,12,-10])
        cylinder(20,2,2);
        translate([9,29,-10])
        cylinder(20,2,2);
    }
}