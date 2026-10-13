// Millimetres. Clamp knob for nominal 5.86 mm splined shaft.
// Bore is circular: exact mating spline requires measured tooth count/profile.
part="print"; // [print,normal]
outer_d=20; knob_h=35; grooves=40; groove_r=.65;
shaft_d=5.86; bore_clearance=.24; bore_d=shaft_d+bore_clearance;
bore_depth=32; entry_chamfer=1;
screw_pilot_d=2.5; screw_z=5; // Tap M3 after printing; M3x8 grub screw.
$fn=128;
assert(bore_depth<=knob_h-2);
assert(screw_z>screw_pilot_d/2 && screw_z<bore_depth-screw_pilot_d/2);
module knob(){difference(){
 cylinder(d=outer_d,h=knob_h);
 for(i=[0:grooves-1])rotate([0,0,i*360/grooves])translate([outer_d/2,0,-.1])cylinder(r=groove_r,h=knob_h+.2);
 translate([0,0,-.1])cylinder(d=bore_d,h=bore_depth+.1);
 cylinder(d1=bore_d+1,d2=bore_d,h=entry_chamfer);
 translate([0,0,screw_z])rotate([0,90,0])cylinder(d=screw_pilot_d,h=outer_d/2+1);
 translate([-.4,outer_d/2-4,knob_h-.5])cube([.8,3,.5]);
}}
if(part=="print")translate([outer_d/2,outer_d/2,knob_h])rotate([180,0,0])knob();
else knob();
