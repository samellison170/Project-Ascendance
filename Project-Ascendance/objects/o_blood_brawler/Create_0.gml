initialize_movement_entity(.5, 1, o_solid);
image_speed = 0;
acceletation_ = .5;
max_speed_ = 1.5;
direction_facing_ = dir.right;
global.blood_brawler_health = 4;

enum player {
	move,
	melee
}

enum dir{
	right,
	up,
	left,
	down
}

state_ = player.move;

//sprite move lookup table
sprite_[player.move, dir.right] = s_blood_brawler_running_right;
sprite_[player.move, dir.up] = s_blood_brawler_running_up;
sprite_[player.move, dir.down] = s_blood_brawler_running_down;
sprite_[player.move, dir.left] = s_blood_brawler_running_right;

sprite_[player.melee, dir.right] = s_blood_brawler_attacking_right;
sprite_[player.melee, dir.up] = s_blood_brawler_attacking_up;
sprite_[player.melee, dir.down] = s_blood_brawler_attacking_down;
sprite_[player.melee, dir.left] = s_blood_brawler_attacking_right;