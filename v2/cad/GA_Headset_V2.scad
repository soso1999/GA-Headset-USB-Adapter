// GA Headset USB Adapter V2 -- millimetres
// View from front: x grows left to right; front y=0.
part = "assembly"; // [base,lid,tray,assembly]
width=100; depth=82; height=58; wall=2.6; floor_thickness=2.6; lid_thickness=2.6;
corner_radius=5; insert_d=4.2; insert_depth=5.4; screw_d=3.4;
front_z=43; front_x=[22,50,78]; front_d=[10.2,9.9,11.7];
usb_width=6; usb_depth=8;
v1_size=[70,50]; v2_size=[60,30]; pcb_thickness=1.6;
v1_y=25; v1_z=8; tray_y=40; tray_top=25; tray_thickness=1.6; pad_height=2;
clearance=.5; lip_height=3.6;
$fn=96;
base_h=height-lid_thickness;
v1_x=(width-v1_size[0])/2;
v2_x=(width-v2_size[0])/2;
tray_x=8.5; tray_w=width-17; tray_d=v2_size[1]+4;
tray_bottom=tray_top-tray_thickness;
mounts=[[7,7],[width-7,7],[7,depth-7],[width-7,depth-7]];
assert(width>=100 && depth>=82 && height>=58,"Reduce dimensions only after checking PCB/connector clearances");
assert(front_z+max(front_d)/2<base_h-2);
assert(v1_y+v1_size[1]+.5+1<depth-wall);
module rounded(w,d,h,r){
 union(){translate([r,0,0])cube([w-2*r,d,h]);translate([0,r,0])cube([w,d-2*r,h]);
 for(x=[r,w-r])for(y=[r,d-r])translate([x,y,0])cylinder(r=r,h=h);}}
module base(){difference(){union(){
 difference(){rounded(width,depth,base_h,corner_radius);
 translate([wall,wall,floor_thickness])rounded(width-2*wall,depth-2*wall,base_h,corner_radius-wall);}
 for(p=mounts)translate([p[0],p[1],floor_thickness])cylinder(r=5,h=base_h-floor_thickness);
 for(x=[v1_x,v1_x+v1_size[0]-3])translate([x,v1_y,floor_thickness])cube([3,v1_size[1],v1_z-floor_thickness]);
 for(x=[v1_x-1.2,v1_x+v1_size[0]+.5])translate([x,v1_y,floor_thickness])cube([.7,v1_size[1],v1_z+pcb_thickness-floor_thickness]);
 for(y=[v1_y-1.5,v1_y+v1_size[1]+.5])translate([v1_x,y,floor_thickness])cube([v1_size[0],1,v1_z+pcb_thickness-floor_thickness]);
 for(x=[wall,width-14])translate([x,tray_y,floor_thickness])cube([14-wall,tray_d,tray_bottom-floor_thickness]);
 }
 for(p=mounts){translate([p[0],p[1],base_h-insert_depth])cylinder(d=insert_d,h=insert_depth+.1);
 translate([p[0],p[1],base_h-8])cylinder(d=3.2,h=8.1);}
 for(i=[0:2])translate([front_x[i],wall+1,front_z])rotate([90,0,0])cylinder(d=front_d[i],h=wall+2);
 translate([(width-usb_width)/2,depth-wall-1,base_h-usb_depth])cube([usb_width,wall+2,usb_depth+.1]);}}
module lid(){difference(){union(){rounded(width,depth,lid_thickness,corner_radius);
 difference(){translate([3,3,lid_thickness])rounded(width-6,depth-6,1.8,2);
 translate([4.2,4.2,lid_thickness-.1])rounded(width-8.4,depth-8.4,2,1);
 for(p=mounts)translate([p[0],p[1],lid_thickness-.1])cylinder(r=5.5,h=2);}}
 for(p=mounts)translate([p[0],p[1],-.1])cylinder(d=screw_d,h=lid_thickness+2);}}
module tray(){difference(){union(){cube([tray_w,tray_d,tray_thickness]);
 for(x=[v2_x-tray_x,v2_x-tray_x+v2_size[0]-3])translate([x,2,tray_thickness])cube([3,v2_size[1],pad_height]);
 for(x=[v2_x-tray_x-1.2,v2_x-tray_x+v2_size[0]+.5])translate([x,2,tray_thickness])cube([.7,v2_size[1],lip_height]);
 for(y=[.8,v2_size[1]+2.5])translate([v2_x-tray_x,y,tray_thickness])cube([v2_size[0],.7,lip_height]);}
 for(x=[7-tray_x,width-7-tray_x])translate([x,depth-7-tray_y,-.1])cylinder(r=5.5,h=8);}}
if(part=="base")base();
else if(part=="lid")lid();
else if(part=="tray")tray();
else if(part=="assembly"){
 color("slategray")base();
 color("orange")translate([tray_x,tray_y,tray_bottom])tray();
 color([.7,.7,.7,.35])translate([0,depth,height])rotate([180,0,0])lid();
 // Transparent PCB envelopes, preview only, excluded from STL export.
 %translate([v1_x,v1_y,v1_z])cube([v1_size[0],v1_size[1],pcb_thickness]);
 %translate([v2_x,tray_y+2,tray_top+pad_height])cube([v2_size[0],v2_size[1],pcb_thickness]);
}
