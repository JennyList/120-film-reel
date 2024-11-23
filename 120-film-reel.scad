/*
A 3D-printable spool for 120 roll film
(c) Jenny List 2024
CC-BY-SA 4.0

A rough and ready spool intended for situations when you find a camera without a take-up spool present.

There are other spool models online, but they have the original -o- style Kodak winder hole. This one has the cross type hole found on newer spools.

I print this with a brim, and full supports.

*/

difference(){
    union(){ //basic spool shape
        cylinder(1.5,12.5,12.5);
        cylinder(65.8,5.5,5.5);
        translate([0,0,64.3]) cylinder(1.5,12.5,12.5);
    }
    translate([-1,-6,12.9]) cube([2,12,40]); //film leader slot
    
    //winder holes in end
    translate([-5.15,-1.25,0]) cube([10.3,2.5,10.3]);
    translate([-1.25,-5.15,0]) cube([2.5,10.3,10.3]);
    translate([-5.15,-1.25,55.5]) cube([10.3,2.5,10.3]);
    translate([-1.25,-5.15,55.5]) cube([2.5,10.3,10.3]);
}