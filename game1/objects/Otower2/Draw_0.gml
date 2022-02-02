draw_self();
if(rangefinder(x,y,sprite_width,sprite_height))
draw_circle(x,y,range,true);

var en = instance_nearest(x,y,Oenemy);
if(en !=noone){
	if(point_distance(x,y,en.x,en.y) <= range+15){
		
		if(!shooting){
			alarm[0] = 1;
			shooting = true;
		}	
		
		ObjectToShoot = en;
		if(rangefinder(x,y,sprite_width,sprite_height))
		draw_line(x,y,en.x,en.y);
		
	}else{
		shooting = false;
		ObjectToShoot = noone;
		
	}
}