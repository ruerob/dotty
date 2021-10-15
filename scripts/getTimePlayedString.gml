///get played time formatted into a string
var time_played = argument[0];

time_played_string="";

var seconds = time_played/room_speed;
var minutes = floor(seconds/60);
if(minutes<10){
    time_played_string ='0';
}
time_played_string+=string(minutes)+":";

seconds = floor(seconds%60);
if(seconds<10){
    time_played_string+='0';
}

time_played_string += string(seconds);

return time_played_string;
