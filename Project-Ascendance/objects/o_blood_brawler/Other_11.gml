/// @description Melee State
image_speed = .8;

if animation_hit_frame(1){
	var _angle = direction_facing_ * 90;
	var _life = 3;
	var _damage = 1;
	var _knockback = 8;
	var _hitbox = create_hitbox(s_melee_hitbox, x, y, _angle, _life, [], _damage, _knockback);
	
	switch direction_facing_ {
		case dir.up: _hitbox.y -= 4; _hitbox.x -= 23; break;
		case dir.down: _hitbox.y -= 28; _hitbox.x += 22; break;
		case dir.right: _hitbox.y -= 35; _hitbox.x -= 10; break;
		case dir.left: _hitbox.y += 15; _hitbox.x += 10; break;
	}
}

if animation_hit_frame(4){
	state_ = player.move;	
}
