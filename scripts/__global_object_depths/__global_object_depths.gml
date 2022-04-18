function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_wall
	global.__objectDepths[1] = 0; // obj_wall_small
	global.__objectDepths[2] = 500; // obj_background
	global.__objectDepths[3] = 500; // obj_background2
	global.__objectDepths[4] = -111; // obj_player
	global.__objectDepths[5] = -111; // obj_player1
	global.__objectDepths[6] = -111; // obj_player2
	global.__objectDepths[7] = 0; // obj_finish
	global.__objectDepths[8] = 0; // menu_main
	global.__objectDepths[9] = 0; // menu_multi
	global.__objectDepths[10] = 0; // menu_extra
	global.__objectDepths[11] = 0; // menu_credits
	global.__objectDepths[12] = 0; // menu_play1
	global.__objectDepths[13] = 0; // menu_options
	global.__objectDepths[14] = 0; // menu_custom
	global.__objectDepths[15] = 0; // obj_tutorial1
	global.__objectDepths[16] = 0; // obj_tutorial2
	global.__objectDepths[17] = 0; // obj_tutorial3
	global.__objectDepths[18] = 0; // obj_tutorial4
	global.__objectDepths[19] = 0; // obj_p1tut1
	global.__objectDepths[20] = 0; // obj_p1tut2
	global.__objectDepths[21] = 0; // obj_p2tut1
	global.__objectDepths[22] = 0; // obj_p2tut2
	global.__objectDepths[23] = 0; // obj_p12tut3
	global.__objectDepths[24] = 0; // obj_red
	global.__objectDepths[25] = 0; // obj_orange
	global.__objectDepths[26] = 0; // obj_yellow
	global.__objectDepths[27] = 0; // obj_lgreen
	global.__objectDepths[28] = 0; // obj_turq
	global.__objectDepths[29] = 0; // obj_blue
	global.__objectDepths[30] = 0; // obj_purple
	global.__objectDepths[31] = 0; // obj_but_red
	global.__objectDepths[32] = 0; // obj_touch_red
	global.__objectDepths[33] = 0; // obj_but_orange
	global.__objectDepths[34] = 0; // obj_but_yellow
	global.__objectDepths[35] = 0; // obj_but_lgreen
	global.__objectDepths[36] = 0; // obj_but_turq
	global.__objectDepths[37] = 0; // obj_but_blue
	global.__objectDepths[38] = 0; // obj_touch_blue
	global.__objectDepths[39] = 0; // obj_but_purple
	global.__objectDepths[40] = 0; // obj_break
	global.__objectDepths[41] = 0; // obj_touch_break
	global.__objectDepths[42] = 0; // obj_regret1
	global.__objectDepths[43] = -9999999; // obj_regret2
	global.__objectDepths[44] = 0; // obj_checkpoint
	global.__objectDepths[45] = 0; // obj_checkpoint1
	global.__objectDepths[46] = 0; // obj_checkpoint2
	global.__objectDepths[47] = -1; // obj_powerup
	global.__objectDepths[48] = 0; // obj_door
	global.__objectDepths[49] = 0; // obj_cdoor
	global.__objectDepths[50] = 0; // obj_pers


	global.__objectNames[0] = "obj_wall";
	global.__objectNames[1] = "obj_wall_small";
	global.__objectNames[2] = "obj_background";
	global.__objectNames[3] = "obj_background2";
	global.__objectNames[4] = "obj_player";
	global.__objectNames[5] = "obj_player1";
	global.__objectNames[6] = "obj_player2";
	global.__objectNames[7] = "obj_finish";
	global.__objectNames[8] = "menu_main";
	global.__objectNames[9] = "menu_multi";
	global.__objectNames[10] = "menu_extra";
	global.__objectNames[11] = "menu_credits";
	global.__objectNames[12] = "menu_play1";
	global.__objectNames[13] = "menu_options";
	global.__objectNames[14] = "menu_custom";
	global.__objectNames[15] = "obj_tutorial1";
	global.__objectNames[16] = "obj_tutorial2";
	global.__objectNames[17] = "obj_tutorial3";
	global.__objectNames[18] = "obj_tutorial4";
	global.__objectNames[19] = "obj_p1tut1";
	global.__objectNames[20] = "obj_p1tut2";
	global.__objectNames[21] = "obj_p2tut1";
	global.__objectNames[22] = "obj_p2tut2";
	global.__objectNames[23] = "obj_p12tut3";
	global.__objectNames[24] = "obj_red";
	global.__objectNames[25] = "obj_orange";
	global.__objectNames[26] = "obj_yellow";
	global.__objectNames[27] = "obj_lgreen";
	global.__objectNames[28] = "obj_turq";
	global.__objectNames[29] = "obj_blue";
	global.__objectNames[30] = "obj_purple";
	global.__objectNames[31] = "obj_but_red";
	global.__objectNames[32] = "obj_touch_red";
	global.__objectNames[33] = "obj_but_orange";
	global.__objectNames[34] = "obj_but_yellow";
	global.__objectNames[35] = "obj_but_lgreen";
	global.__objectNames[36] = "obj_but_turq";
	global.__objectNames[37] = "obj_but_blue";
	global.__objectNames[38] = "obj_touch_blue";
	global.__objectNames[39] = "obj_but_purple";
	global.__objectNames[40] = "obj_break";
	global.__objectNames[41] = "obj_touch_break";
	global.__objectNames[42] = "obj_regret1";
	global.__objectNames[43] = "obj_regret2";
	global.__objectNames[44] = "obj_checkpoint";
	global.__objectNames[45] = "obj_checkpoint1";
	global.__objectNames[46] = "obj_checkpoint2";
	global.__objectNames[47] = "obj_powerup";
	global.__objectNames[48] = "obj_door";
	global.__objectNames[49] = "obj_cdoor";
	global.__objectNames[50] = "obj_pers";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
