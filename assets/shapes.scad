// make knobs of different shapes
$fn=500;
t=8; //thickness
module encoder(){
// insert this into shapes
rad=4.0;
//This cylinder covers the hole for the knob
cylinder(3.0,rad,true); //cap thickness, radius
//translate(0.0,0.0,10.0);
difference(){
    cylinder(10,rad,rad);//knob length, top radius ,bot radius
difference(){
    cylinder(d=6.25, h=25);//d inner hole
    translate([0,50.0,40]) //2nd var: how far teh flat is into the hole
    cube(96, center=true);
}
}
}

module star(){
difference(){
%encoder();
linear_extrude(t)
import("/home/m/Desktop/shapes/star.svg", center=true);



}
}

module squa(){

linear_extrude(t)
import("/home/m/Desktop/shapes/square.svg");
//encoder();

}

module spir(){
encoder();
linear_extrude(t)
import("/home/m/Desktop/shapes/spiral.svg");
}

module tria(){
encoder();
linear_extrude(t)
import("/home/m/Desktop/shapes/trianle.svg");
}

module circ(){
encoder();
linear_extrude(t)
import("/home/m/Desktop/shapes/cirlce.svg");
}


