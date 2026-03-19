global.todayDate = 1;
global.weatherRainy = false;
global.weatherSunny = false;
global.weatherRainyNight = true; 
global.weatherClearNight = false;

global.time = 0;
global.dayTime = true;
global.timeSpeed = 10;
global.newDayFlag = false;


global.dayLength = 86400;
sunriseHour = 7;
sunsetHour = 19;


randomize();


timeTextX = 208;
timeTextY = 16;

rainyDay = random_range(5,10);
sunnyDay = rainyDay + random_range(1,4);

audio_play_sound(sndBackground, 1, true);


