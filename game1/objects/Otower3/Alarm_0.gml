if(instance_exists(ObjectToShoot)){
	var bullet = instance_create_depth(x,y,-9,Obullet);
	bullet.speed = 17;
	bullet.direction = point_direction(x,y,ObjectToShoot.x,ObjectToShoot.y);
	alarm[0] = fire_rate;
	
}else{
	shooting = false;
}
