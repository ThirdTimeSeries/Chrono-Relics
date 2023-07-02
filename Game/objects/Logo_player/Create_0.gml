__alpha_1 = 0
__alpha_2 = 0

function C_1(){
return CO_BEGIN

	audio_play_sound(Logo_snd,0,0)
	Anim_Create(Logo_player, "__alpha_1", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, 0, 1, 90);
	AWAIT Logo_player.__alpha_1 = 1 THEN
	DELAY 1000 THEN
	Anim_Create(Logo_player, "__alpha_1", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, 1, -1, 90);
	AWAIT Logo_player.__alpha_1 = 0 THEN
	
	Anim_Create(Logo_player, "__alpha_2", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, 0, 1, 90);
	AWAIT Logo_player.__alpha_2 = 1 THEN
	DELAY 1000 THEN
	Anim_Create(Logo_player, "__alpha_2", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, 1, -1, 90);
	AWAIT Logo_player.__alpha_2 = 0 THEN
	
	Anim_Create(fader, "alpha", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, 0, 1, 90);
	AWAIT fader.alpha = 1 THEN
	room_goto(map_tutorial)
CO_END
}

C_1()