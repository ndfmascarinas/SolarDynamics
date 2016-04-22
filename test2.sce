//  rectangle selection
clf();  // erase/create window
a=gca();a.data_bounds=[0 0;100 100];//set user coordinates
xtitle(" drawing a rectangle ") //add a title
show_window(); //put the window on the top

[b,xc,yc]=xclick(); //get a point
xrect(xc,yc,0,0) //draw a rectangle entity
r=gce();// the handle of the rectangle
rep=[xc,yc,-1];first=%f;

while rep(3)==-1 do // mouse just moving ...
  rep=xgetmouse();
  xc1=rep(1);yc1=rep(2);
  ox=min(xc,xc1);
  oy=max(yc,yc1);
  w=abs(xc-xc1);h=abs(yc-yc1);
  r.data=[ox,oy,w,h]; //change the retangle origin, width an height
  first=%f;
end
