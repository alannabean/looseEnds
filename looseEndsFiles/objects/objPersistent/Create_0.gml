global.todayDate = 1;
global.weatherRainy = true;
global.weatherSunny = false;
global.weatherRainyNight = false; 
global.weatherClearNight = false;
global.dayTime = true;
global.constantTimeSpeed = 3;
global.timeSpeed = global.constantTimeSpeed;
global.dayLength = 86400;
global.time = global.dayLength/2;
global.dayFlag = false;
global.dayFlagAlarm = 0;

randomize();


sunriseHour = 7;
sunsetHour = 19;

timeTextX = 208;
timeTextY = 19;

audio_play_sound(sndBackground, 1, true);

