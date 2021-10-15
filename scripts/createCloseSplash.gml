///createCloseSplash(dot1, dot2, space_left)
//this function creates an instance of obj_close_splash between to circles

//first we need the two dots and we need to know how much space is left between them
var dot1 = argument[0];
var dot2 = argument[1];
var abst = dot1.r + 30;

var m = (dot1.y - dot2.y)/(dot1.x-dot2.x);
var b = (dot1.y) - (m * dot1.x);

var d = 1.0+(m*m);
var e = (2.0*m*(b-dot1.y))-(2.0*dot1.x);
var f = (dot1.x*dot1.x) + (b-dot1.y)*(b-dot1.y) - (abst*abst);

var x1 = (-e + sqrt(e*e-4.0*d*f))/(2.0*d);
var x2 = (-e - sqrt(e*e-4.0*d*f))/(2.0*d);

var _x=0;
var _y=0;
var x_min = dot1.x;
var x_max = dot2.x;

if(x_min>x_max){
    var x_temp = x_min;
    x_min = x_max;
    x_max = x_temp;
}

if(x1<x_max && x1>x_min){
    _x=x1;
}else{
    _x=x2;
}

_y=m*_x+b;

var splash = instance_create(_x, _y, obj_close_splash);

splash.image_angle = -radtodeg(arctan(m))-90;
splash.image_blend = merge_color(dot1.color, c_white, 0.3);
