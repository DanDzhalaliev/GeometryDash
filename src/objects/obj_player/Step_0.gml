/// @description Cube logic



hsp = 10.6 * global.spdboost

scr_mini_set()

jboost_set()

jumpspd = 20 * s_jboost()

scr_ring_set()

if global.playing 

{

	physics()

	if keyboard_check(vk_up) or mouse_check_button(mb_left)

	{

		if separated and instance_number(obj_player) > 1 && player == 0 {
			if place_meeting(x, y+gravdir, obj_wall) {
				vsp = -jumpspd
			}
		} else if !separated {
			if place_meeting(x, y+gravdir, obj_wall) {
				vsp = -jumpspd
			}
		}

	} else if mouse_check_button(mb_left) && player == 1 && separated {
		if place_meeting(x, y+gravdir, obj_wall)
		{
			vsp = -jumpspd
		}
	}

} else {

	x = -182

	y = 4572

}
///Effects

if trail {

	scr_trail(0,0)

} if place_meeting(x, y+gravdir, obj_wall) {

	repeat 2 {

		scr_sprite()

	}

}
///jitbacs

scr_hitbox(x, y)
///Interactive

scr_interactive()