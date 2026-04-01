global.todayDate = 1;
global.weatherRainy = true;
global.weatherSunny = false;
global.weatherRainyNight = false; 
global.weatherClearNight = false;
global.dayTime = true;
global.constantTimeSpeed = 2;
global.timeSpeed = global.constantTimeSpeed;
global.newDayFlag = false;
global.dayLength = 86400;
global.time = global.dayLength/2;

randomize();


sunriseHour = 7;
sunsetHour = 19;

timeTextX = 208;
timeTextY = 16;

rainyDay = random_range(16,21);
sunnyDay = rainyDay + random_range(1,3);

audio_play_sound(sndBackground, 1, true);

