module casenumber (mode,n,m,l,w,h,p1,p2,p3,t) {
    //n is the number of cases produced. m is the number of cases along the x axis. mode returns a layout for laser cutting when set to 1, a 3d case preview otherwise. p1 is the percent of the hight at which the top of the network hub is. p2 is for the side of the power hub. and p3 is for the "far" end of the pis
    module peg(z){
        //This module defines the piece we use to put in the slot to hold the case together, this module is used throughout the other modules
        translate([z/5,0,0])cube([z/5,t,t]);
        translate([3*z/5,0,0])cube([z/5,t,t]);
    }
    module slot (z){
        //This is the module that defines the part that holds the pegs to keep the case together, this module is used throughout the other modules 
        difference(){
        cube([z,2*t,t]);
        peg(z);
        }
    }
    module base(){
        //This module defines the base of the case
        translate([0,t])cube([l,w,t]);
        peg(l);
        translate([0,w+t])peg(l);
        translate ([0, t])rotate ([0, 0, 90])slot (w);
        translate ([l,t,t])rotate ([180,0,90])slot (w);
    }
    module xyinterior(){
        //This module defines the partition between the network hub and the pis and power hub
        difference(){
            translate([0,t])cube([l,w,t]);
            translate([l*p2,t]) rotate(90) peg(w);
            translate([t+l*p2,w*p3-t]) peg(l*(1-p2));
        }
        peg(l);
        translate([0,w+t])peg(l);
        translate ([0, t])rotate ([0, 0, 90])peg (w);
        translate ([l,t,t])rotate ([180,0,90]) peg(w);
    }
    module shortside(){
        //This module defines the shorter sides of the case
        difference(){
            cube([t,w,h]);
            translate([t*.5,0,h*p1]) rotate([0,0,90]) peg(w);
            translate([t*1.5,0,h*p1]) rotate([0,0,90]) peg(w);
            translate([t*.5,w*p3-2*t,h*p1+t]) rotate([0,270,0]) peg(h-h*p1);
            translate([t*1.5,w*p3-2*t,h*p1+t]) rotate([0,270,0]) peg(h-h*p1);
            translate ([0, w/2-t, 2*t])rotate ([90, 0, 90])cube ([w/2, 4*t, t*2]);
            translate ([t*.5,t*2, h-3*t])rotate ([0,0,90])peg (h-h*p1);
            translate ([t,t*2, h-3*t])rotate ([0,0,90])peg (h-h*p1);
        }
        rotate([180,0,90]) peg(w);
        translate([0,0,h+t]) rotate([180,0,90]) peg(w);
        translate([0,0,h+2*t]) rotate([180,0,90]) peg(w);
        translate([0,w/5,h+2*t])cube([t,w*3/5,t]);
        translate([0,0,h+4*t]) rotate([180,0,90]) peg(w);
        translate([0,w/5,h+4*t])cube([t,w*3/5,t]);
        rotate([0,-90,180]) slot(h);
        translate([t,w,0]) rotate([0,-90,0]) slot(h);
    }
    module yzinterior(){
        //This module defines the part used to separate the pis and the power hub
        difference () {
        cube([t,w,h*(1-p1)-t]);
        translate([t*.5,w*p3-2*t,0]) rotate ([0,-90,0])peg(h*(1-p1));
        translate([t*1.5,w*p3-2*t,0]) rotate ([0,-90,0])peg(h*(1-p1));
            translate ([t,t*2, h*(1-p1)-4*t])rotate ([0,0,90])peg (h-h*p1);
            translate ([0,t*2, h*(1-p1)-4*t])rotate ([0,0,90])peg (h-h*p1);
        }
        rotate([180,0,90]) peg(w);
        translate([0,0,h*(1-p1)]) rotate([180,0,90]) peg(w);
        rotate([0,-90,180]) peg(h*(1-p1));
        translate([0,w+t]) rotate([0,-90,180]) peg(h*(1-p1));
    }
    module longside(){
        //This module defines one of the longer sides of the case that has port holes for the ports on the pis
        difference(){
            cube([l,t,h]);
            translate([0,0,h*p1]) peg(l);
            translate([l*p2,0,h*p1+t]) rotate([0,-90,0]) peg(h*(1-p1));
            translate([l*.05, 0, t])cube ([l*.9,t,h*p1-2*t]);
            translate([l*p2+t, 0,h*p1+2*t])cube ([l*(1-p2)-3*t, t, h*(1-p1)-6*t]);
            translate([t, 0, h*p1+2*t])cube ([l*(p2)-3*t, t, h*(1-p1)-4*t]);
            translate ([p2*l, 0, h-3*t]) peg(l-l*p2);
        }
        translate([0,t,h])rotate ([90,0,0])peg(l);
        rotate([0,-90])peg(h);
        translate([l+t,0,0])rotate([0,-90])peg(h);
        rotate([-90,0,0]) slot(l);
        
    }
    module xzinterior(){
        //This is used to secure the pis in the case
        difference(){
            translate([0,-t,0])cube([l*(1-p2),t,h*(1-p1)-t]);
            translate([2*t,-t,2*t]) cube([l*(1-p2)-4*t,t,h*(1-p1)-7*t]);
            translate ([0, -t, h-h*p1-4*t]) peg(l-l*p2);
        }
        rotate([180,0,0]) translate([t,0,0])peg(l*(1-p2));
        translate([t,0,h*(1-p1)]) rotate([180,0,0]) peg(l*(1-p2));
        rotate([0,-90,90])peg(h*(1-p1));
        translate([l*(1-p2)+t,-t]) rotate([0, -90,0]) peg(h*(1-p1));
    }
    module top(){
        //This is the module that defines the top of the case and holds the case together
        difference(){
            cube([l,w,t]);
            translate([l*p2,0]) rotate(90) peg(w);
            translate([t+l*p2,w*p3-2*t]) peg(l*(1-p2));
            translate([l*p2+t,2*t,0])cube ([l*(1-p2)-2*t, w*p3-5*t, t]);
        }
        translate ([0, 0, t]) rotate([180, 0, 0])slot(l);
        translate ([0, w, 0])slot(l);
        difference(){
            rotate ([0, 0, 90])slot(w);
            translate([-t,w/5])cube([t,w*3/5,t]);
        }
        translate([l, w])difference(){
            rotate ([0, 0, -90])slot(w);
            translate([0,-w*4/5])cube([t,w*3/5,t]);
        }
    }
    module pitop() {
        //This piece holds the pis in place vertically
        difference () {
        cube ([l*(1-p2), w*p3-2*t, t]);
        translate([t,2*t,0])cube ([l*(1-p2)-2*t, w*p3-5*t, t]);
        }
        translate([0, -1*t, 0]) rotate ([0, 0, 0])peg (l*(1-p2));
        translate([0, w-5*t, 0]) rotate ([0, 0, 0])peg (l*(1-p2));
        translate ([0,t*2,0])rotate ([0,0,90])peg (h-h*p1);
            translate ([l*(1-p2)+t,t*2,0])rotate ([0,0,90])peg (h-h*p1);
    }
    module clasp(){
        cylinder(t,w/10,w/10);
        translate([t/2,0]) union(){
            cube([2*t,w*2/5,t]);
            translate([-2*t,w*3/10]) cube([2*t,w/10,t]);
            translate([-1.5*t,w*3/10]) cylinder($fn=6,t,t/2,t/2);
        }
        rotate(180) translate([t/2,0]) union(){
            cube([2*t,w*2/5,t]);
            translate([-2*t,w*3/10]) cube([2*t,w/10,t]);
            translate([-1.5*t,w*3/10]) cylinder($fn=6,t,t/2,t/2);
        }
    }
module case(){
    //This section ligns up all of the pieces to be cut
    translate([t,0,0]) base();
    translate([0,l-w*.25,0]) xyinterior();
    translate([2*l+w*.5-2*t,t,0]) rotate([0, 90, 0])yzinterior();
    translate([l+w*.25,2*l-.5*w+2*t,0]) rotate([0, 90, 0]) difference(){
        shortside();
        translate([0,3,0.5*h])rotate([90,0,90])linear_extrude(2*t){
        text("cloudmesh.org",size=9);
        }
    }
    translate([1.5*l-.5*w,l+.75*w,0])rotate([90, 0, 0]) longside();
    translate([l*1.5-w*.5,t*2,0]) top();
    translate ([2*l+.5*w-2*t,w*1.25,0])rotate([90,0,90])xzinterior ();
    translate([0,2*l-w*.5+2*t,0])rotate([-90, 0, 0])longside();
    mirror([0, 180, 0])translate([2*l, -2*l-w*.5-2*t, 0])rotate([0, 90, 0])difference(){
        shortside();
        translate([2*t,83,0.5*h])rotate([90,0,-90])linear_extrude(2*t){
        text("cloudmesh.org",size=9);
        }
    }
    translate ([3*l+w*.5, 0, 0]) rotate (90,0,0)pitop();
    translate([l*1.7,w*7/10]) rotate(90) clasp();
    translate([l*1.7,w*3/10]) rotate(90) clasp();
    translate([3*l,w/2])union(){
        cube([10,10,3]);
        translate([0,-9])linear_extrude(t){
            text("10mm",size=9);
        }
    }
}
    if (mode==1){
        if (n>0) {
            projection () translate([t+(2*l+w*1.5+h*(1-p1))*((n-1)%m),(2*l-w/2+h+5*t)*floor((n-1)/m),t]) case();
            casenumber(1,n-1,m,l,w,h,p1,p2,p3,t);
        }
    }
    else{
        //This section ligns up all of the pieces so they look how they will when the case is put together
    translate([t,0,0]) base();
    translate([t,0,h*p1+t]) xyinterior();
    color("red") translate([l*p2,t,h*p1+2*t]) yzinterior();
    translate([0,t,t])color("red")difference(){
        shortside();
        translate([2*t,83,0.5*h])rotate([90,0,-90])linear_extrude(2*t){
        text("cloudmesh.org",size=9);
        }
    }
    translate([t,0,t])color("blue") longside();
    translate([t,t,h+t]) top();
    color("blue") translate ([t+l*p2,w*p3,h*p1+2*t])xzinterior ();
    color("blue")translate([t,w+t,t])longside();
    color("red") translate([t+l, t, t])difference(){
        shortside();
        translate([0,3,0.5*h])rotate([90,0,90])linear_extrude(2*t){
        text("cloudmesh.org",size=9);
        }
    }
    translate ([l*p2+t, t, h-2*t])pitop ();
    color("green")translate([t/2,w/2+t,h+2*t])clasp();
    color("green")translate([l+t*3/2,w/2+t,h+2*t])clasp();
    }
}
translate([0,1]) casenumber(1,1,1,158,100,99,.28,.20,.91,3);