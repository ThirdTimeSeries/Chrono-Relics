__alpha_1 = 0
__alpha_2 = 0

function C_1(){
return CO_BEGIN
	Anim_Create(map_tutorial_obj, "__alpha_1", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, 0, 1, 90);
	AWAIT map_tutorial_obj.__alpha_1 = 1 THEN
	DELAY 1000 THEN
	Anim_Create(map_tutorial_obj, "__alpha_1", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, 1, -1, 90);
	AWAIT map_tutorial_obj.__alpha_1 = 0 THEN
	
	Anim_Create(map_tutorial_obj, "__alpha_2", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, 0, 1, 90);
	AWAIT map_tutorial_obj.__alpha_2 = 1 THEN
	DELAY 1000 THEN
	Anim_Create(map_tutorial_obj, "__alpha_2", ANIM_TWEEN.QUAD, ANIM_EASE.OUT, 1, -1, 90);
	AWAIT map_tutorial_obj.__alpha_2 = 0 THEN

CO_END
}

C_1()