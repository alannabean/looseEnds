

if global.todayDate >= 3 && global.todayDate <= 5 {global.extraEmail = 1};

if global.todayDate > 6 && global.todayDate <= 30 {global.extraEmail = -(global.todayDate-5)};

if global.todayDate == 31 {game_end()};
