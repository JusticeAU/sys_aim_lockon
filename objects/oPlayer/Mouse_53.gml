/// @description 
with (instance_create_layer(x,y,layer,oBullet)){
	var angle = point_direction(other.x,other.y,other.cur.target.x,other.cur.target.y);
	direction = angle;
	image_angle = angle;
}