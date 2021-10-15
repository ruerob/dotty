///getRandomColor
//Ported JS function from:
//https://github.com/davidmerfield/randomColor/blob/master/randomColor.js

var colorType = floor(random(7));

while(global.lastColorType == colorType){
    colorType = floor(random(7));
}

global.lastColorType = colorType;

if(colorType==0){ //red
    var hue = random(31);
    hue -= 18;
    if(hue<0)hue+=255;
    
    var sat = 55 + random(45);
    
    var lowerBounds;
    lowerBounds[0, 0] = 20;
    lowerBounds[0, 1] = 100;
    lowerBounds[1, 0] = 30;
    lowerBounds[1, 1] = 92;
    lowerBounds[2, 0] = 40;
    lowerBounds[2, 1] = 89;
    lowerBounds[3, 0] = 50;
    lowerBounds[3, 1] = 85;
    lowerBounds[4, 0] = 60;
    lowerBounds[4, 1] = 78;
    lowerBounds[5, 0] = 70;
    lowerBounds[5, 1] = 70;
    lowerBounds[6, 0] = 80;
    lowerBounds[6, 1] = 60;
    lowerBounds[7, 0] = 90;
    lowerBounds[7, 1] = 55;
    lowerBounds[8, 0] = 100;
    lowerBounds[8, 1] = 50;
    
    var lowerVal = 0;
    
    for(var i = 0;i<9;i++){
        var s1 = lowerBounds[i, 0];
        var v1 = lowerBounds[i, 1];

        var s2 = lowerBounds[i+1, 0];
        var v2 = lowerBounds[i+1, 1];

        if (sat >= s1 && sat <= s2) {

            var m = (v2 - v1)/(s2 - s1);
            var b = v1 - m*s1;

            lowerVal = m*sat + b;
            break;
        }
    }
    lowerVal = (100+lowerVal)/2;
    
    var val = lowerVal + random(100-lowerVal);
    return make_color_hsv(hue,(sat/100)*255,(val/100)*255);
    
}else if(colorType == 1){ //orange
    var hue = random(27)+19;
    hue = (hue/360)*255;
    
    var sat = 55 + random(45);
    
    var lowerBounds;
    lowerBounds[0, 0] = 20;
    lowerBounds[0, 1] = 100;
    lowerBounds[1, 0] = 30;
    lowerBounds[1, 1] = 93;
    lowerBounds[2, 0] = 40;
    lowerBounds[2, 1] = 88;
    lowerBounds[3, 0] = 50;
    lowerBounds[3, 1] = 86;
    lowerBounds[4, 0] = 60;
    lowerBounds[4, 1] = 85;
    lowerBounds[5, 0] = 70;
    lowerBounds[5, 1] = 70;
    lowerBounds[6, 0] = 100;
    lowerBounds[6, 1] = 60;
    
    var lowerVal = 0;
    
    for(var i = 0;i<7;i++){
        var s1 = lowerBounds[i, 0];
        var v1 = lowerBounds[i, 1];

        var s2 = lowerBounds[i+1, 0];
        var v2 = lowerBounds[i+1, 1];

        if (sat >= s1 && sat <= s2) {

            var m = (v2 - v1)/(s2 - s1);
            var b = v1 - m*s1;

            lowerVal = m*sat + b;
            break;
        }
    }
    lowerVal = (100+lowerVal)/2;
    
    var val = lowerVal + random(100-lowerVal);
    return make_color_hsv(hue,(sat/100)*255,(val/100)*255);
    
}else if(colorType == 2){ //yellow
    var hue = random(15)+47;
    hue = (hue/360)*255;
    
    var sat = 55 + random(45);
    
    var lowerBounds;
    lowerBounds[0, 0] = 25;
    lowerBounds[0, 1] = 100;
    lowerBounds[1, 0] = 40;
    lowerBounds[1, 1] = 94;
    lowerBounds[2, 0] = 50;
    lowerBounds[2, 1] = 89;
    lowerBounds[3, 0] = 60;
    lowerBounds[3, 1] = 86;
    lowerBounds[4, 0] = 70;
    lowerBounds[4, 1] = 84;
    lowerBounds[5, 0] = 80;
    lowerBounds[5, 1] = 82;
    lowerBounds[6, 0] = 90;
    lowerBounds[6, 1] = 80;
    lowerBounds[7, 0] = 100;
    lowerBounds[7, 1] = 75;
    
    var lowerVal = 0;
    
    for(var i = 0;i<8;i++){
        var s1 = lowerBounds[i, 0];
        var v1 = lowerBounds[i, 1];

        var s2 = lowerBounds[i+1, 0];
        var v2 = lowerBounds[i+1, 1];

        if (sat >= s1 && sat <= s2) {

            var m = (v2 - v1)/(s2 - s1);
            var b = v1 - m*s1;

            lowerVal = m*sat + b;
            break;
        }
    }
    lowerVal = (100+lowerVal)/2;
    
    var val = lowerVal + random(100-lowerVal);
    return make_color_hsv(hue,(sat/100)*255,(val/100)*255);
    
}else if(colorType == 3){ //green
    var hue = random(115)+63;
    hue = (hue/360)*255;
    
    var sat = 55 + random(45);

    var lowerBounds;
    lowerBounds[0, 0] = 30;
    lowerBounds[0, 1] = 100;
    lowerBounds[1, 0] = 40;
    lowerBounds[1, 1] = 90;
    lowerBounds[2, 0] = 50;
    lowerBounds[2, 1] = 85;
    lowerBounds[3, 0] = 60;
    lowerBounds[3, 1] = 81;
    lowerBounds[4, 0] = 70;
    lowerBounds[4, 1] = 74;
    lowerBounds[5, 0] = 80;
    lowerBounds[5, 1] = 64;
    lowerBounds[6, 0] = 90;
    lowerBounds[6, 1] = 50;
    lowerBounds[7, 0] = 100;
    lowerBounds[7, 1] = 40;
    
    var lowerVal = 0;
    
    for(var i = 0;i<8;i++){
        var s1 = lowerBounds[i, 0];
        var v1 = lowerBounds[i, 1];

        var s2 = lowerBounds[i+1, 0];
        var v2 = lowerBounds[i+1, 1];

        if (sat >= s1 && sat <= s2) {

            var m = (v2 - v1)/(s2 - s1);
            var b = v1 - m*s1;

            lowerVal = m*sat + b;
            break;
        }
    }
    lowerVal = (100+lowerVal)/2;
    
    var val = lowerVal + random(100-lowerVal);
    return make_color_hsv(hue,(sat/100)*255,(val/100)*255);
    
}else if(colorType == 4){ //blue
    var hue = random(78)+179;
    hue = (hue/360)*255;
    
    var sat = 55 + random(45);

    var lowerBounds;
    lowerBounds[0, 0] = 20;
    lowerBounds[0, 1] = 100;
    lowerBounds[1, 0] = 30;
    lowerBounds[1, 1] = 86;
    lowerBounds[2, 0] = 40;
    lowerBounds[2, 1] = 80;
    lowerBounds[3, 0] = 50;
    lowerBounds[3, 1] = 74;
    lowerBounds[4, 0] = 60;
    lowerBounds[4, 1] = 60;
    lowerBounds[5, 0] = 70;
    lowerBounds[5, 1] = 52;
    lowerBounds[6, 0] = 80;
    lowerBounds[6, 1] = 44;
    lowerBounds[7, 0] = 90;
    lowerBounds[7, 1] = 39;
    lowerBounds[8, 0] = 100;
    lowerBounds[8, 1] = 39;
    
    var lowerVal = 0;
    
    for(var i = 0;i<9;i++){
        var s1 = lowerBounds[i, 0];
        var v1 = lowerBounds[i, 1];

        var s2 = lowerBounds[i+1, 0];
        var v2 = lowerBounds[i+1, 1];

        if (sat >= s1 && sat <= s2) {

            var m = (v2 - v1)/(s2 - s1);
            var b = v1 - m*s1;

            lowerVal = m*sat + b;
            break;
        }
    }
    lowerVal = (100+lowerVal)/2;
    
    var val = lowerVal + random(100-lowerVal);
    return make_color_hsv(hue,(sat/100)*255,(val/100)*255);
    
}else if(colorType == 5){ //purple
    var hue = random(24)+258;
    hue = (hue/360)*255;
    
    var sat = 55 + random(45);

    var lowerBounds;
    lowerBounds[0, 0] = 20;
    lowerBounds[0, 1] = 100;
    lowerBounds[1, 0] = 30;
    lowerBounds[1, 1] = 87;
    lowerBounds[2, 0] = 40;
    lowerBounds[2, 1] = 79;
    lowerBounds[3, 0] = 50;
    lowerBounds[3, 1] = 70;
    lowerBounds[4, 0] = 60;
    lowerBounds[4, 1] = 65;
    lowerBounds[5, 0] = 70;
    lowerBounds[5, 1] = 59;
    lowerBounds[6, 0] = 80;
    lowerBounds[6, 1] = 52;
    lowerBounds[7, 0] = 90;
    lowerBounds[7, 1] = 45;
    lowerBounds[8, 0] = 100;
    lowerBounds[8, 1] = 42;
    
    var lowerVal = 0;
    
    for(var i = 0;i<9;i++){
        var s1 = lowerBounds[i, 0];
        var v1 = lowerBounds[i, 1];

        var s2 = lowerBounds[i+1, 0];
        var v2 = lowerBounds[i+1, 1];

        if (sat >= s1 && sat <= s2) {

            var m = (v2 - v1)/(s2 - s1);
            var b = v1 - m*s1;

            lowerVal = m*sat + b;
            break;
        }
    }
    lowerVal = (100+lowerVal)/2;
    
    var val = lowerVal + random(100-lowerVal);
    return make_color_hsv(hue,(sat/100)*255,(val/100)*255);
    
}else if(colorType == 6){ //pink
    var hue = random(51)+283;
    hue = (hue/360)*255;
    
    var sat = 55 + random(45);
    
    var lowerBounds;
    lowerBounds[0, 0] = 20;
    lowerBounds[0, 1] = 100;
    lowerBounds[1, 0] = 30;
    lowerBounds[1, 1] = 90;
    lowerBounds[2, 0] = 40;
    lowerBounds[2, 1] = 86;
    lowerBounds[3, 0] = 60;
    lowerBounds[3, 1] = 84;
    lowerBounds[4, 0] = 80;
    lowerBounds[4, 1] = 80;
    lowerBounds[5, 0] = 90;
    lowerBounds[5, 1] = 75;
    lowerBounds[6, 0] = 100;
    lowerBounds[6, 1] = 73;
    
    var lowerVal = 0;
    
    for(var i = 0;i<7;i++){
        var s1 = lowerBounds[i, 0];
        var v1 = lowerBounds[i, 1];

        var s2 = lowerBounds[i+1, 0];
        var v2 = lowerBounds[i+1, 1];

        if (sat >= s1 && sat <= s2) {

            var m = (v2 - v1)/(s2 - s1);
            var b = v1 - m*s1;

            lowerVal = m*sat + b;
            break;
        }
    }
    lowerVal = (100+lowerVal)/2;
    
    var val = lowerVal + random(100-lowerVal);
    return make_color_hsv(hue,(sat/100)*255,(val/100)*255);
}
