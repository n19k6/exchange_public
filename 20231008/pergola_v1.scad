// pergola

// material
// https://www.bauhaus.info/leimbinder/leimbinder-si/p/20464729
// 10x10 = 11,50
// 6x12 = 8,70
// alternativ holzland gentil

// begriffe: pfeiler (pfosten), sparren (querbalken) und pfetten

// hints:
// balken nicht direkt bewachsenlassen, da regelmaessiges streichen notwendig ist
// pfeiler abstand zum h-traeger mindestens 1cm
// pfetten abstand mindestens 80cm

// kaufen:
// distanzhuelse, distanzscheiben
// pfostenkappen


module balken(w=10,d=10,h=250) {
    translate([0,0,h*5])
    cube([w*10,d*10,h*10], true);
}

module pfeiler() {
    balken(10,10,250);
}

module sparren_quer() {
    rotate(-90-7,[1,0,0])
    balken(6,12,410);
}

module sparren_laengs() {
    rotate(-90,[1,0,0])
    rotate(90,[0,1,0])
    balken(6,12,410);
}

// pfeiler
translate([5,5,0]*10) {
    translate([0,0,0]*10)
    pfeiler();
    translate([194,0,0]*10)
    pfeiler();
    translate([194+193.5,0,0]*10)
    pfeiler();

    translate([0,373.6,0]*10)
    pfeiler();
    translate([194,374,0]*10)
    pfeiler();
    translate([194+201,378.8,0]*10)
    pfeiler();
}

//sparren_quer
translate([-3-2,0,240]*10)
sparren_quer();
translate([194+5-5-3-2,0,240]*10)
sparren_quer();
translate([194+5-5-3-2+(2+2+10+3+3),0,240]*10)
sparren_quer();
translate([395+3+5+5+2,0,240]*10)
sparren_quer();



//sparren_laengs
translate([0,-3-2,225]*10)
sparren_laengs();
translate([0,378.8+10+3+2,225-30+30]*10)
sparren_laengs();





