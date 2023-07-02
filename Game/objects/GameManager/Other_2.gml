enum DEPTH {
	GLOBALUI = -99999,
	FADER	 = -99998
}
#macro GAME_VERSION "DEBUGING"

OSName = ""
switch(os_type){
	case os_windows	:	OSName = "Windows"  ;break
	case os_gxgames	:	OSName = "GX"		;break
	case os_linux	:	OSName = "Linux"	;break
	case os_macosx	:	OSName = "macOS"	;break
	case os_ios		:	OSName = "iOS"		;break
	case os_tvos	:	OSName = "tvOS"		;break
	case os_android	:	OSName = "Android"	;break
	case os_ps4		:	OSName = "PS4"		;break
	case os_ps5		:	OSName = "PS5"		;break
	case os_gdk		: 	OSName = "GDK"		;break
	case os_switch	:	OSName = "Switch"	;break
	case os_unknown	:	OSName = "Unknown"	;break
}

Anim_Init()

room_goto(Logo)