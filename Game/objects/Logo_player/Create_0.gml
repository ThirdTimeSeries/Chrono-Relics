__alpha_1 = 0
__alpha_2 = 0

function C_1(){
return CO_BEGIN

WHILE (Logo_player.__alpha_1 < 1) THEN
	Logo_player.__alpha_1 += delta_time/1000000;
	if(Logo_player.__alpha_1 >= 1)Logo_player.__alpha_1 = 1
	YIELD THEN
END

DELAY 1400 THEN

WHILE (Logo_player.__alpha_1 > 0) THEN
	Logo_player.__alpha_1 -= delta_time/1000000;
	if(Logo_player.__alpha_1 <= 0)Logo_player.__alpha_1 = 0
	YIELD THEN
END

WHILE (Logo_player.__alpha_2 < 1) THEN
	Logo_player.__alpha_2 += delta_time/1000000;
	if(Logo_player.__alpha_2 >= 1)Logo_player.__alpha_2 = 1
	YIELD THEN
END

DELAY 1400 THEN

WHILE (Logo_player.__alpha_2 > 0) THEN
	Logo_player.__alpha_2 -= delta_time/1000000;
	if(Logo_player.__alpha_2 <= 0)Logo_player.__alpha_2 = 0
	YIELD THEN
END

WHILE (fader.alpha < 1) THEN
	fader.alpha += delta_time/1000000;
	if(fader.alpha >= 1)fader.alpha = 1
	YIELD THEN
END

CO_END
}

C_1()