/// @description Melee State
image_speed = .8;

if animation_hit_frame(1){
	var _angle = direction_facing_ * 90;
	var _life = 3;
	var _damage = 1;
	var _knockback = 8;
	create_hitbox(s_melee_hitbox, x, y, _angle, _life, [], _damage, _knockback);
}

if animation_hit_frame(4){
	state_ = player.move;	
}
