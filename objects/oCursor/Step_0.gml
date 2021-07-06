/// @description 

//move our cursor icon to our mouse position
x = mouse_x;
y = mouse_y;


var enemy_list = ds_list_create();
//check for oEnemy within lock_radius - if there are enemies, put them in the list.
//lock_on will be true or false depending on if there were or werent enemies.
var lock_on = collision_circle_list(x,y,lock_radius,oEnemy,false,false,enemy_list,true);

//if no enemies in radius, target indicator moves back to cursor
if (lock_on == 0){
	target.xTo = x;
	target.yTo = y;
}
else{ //otherwise if there is enemies in the radius, we access the first entry in the ordered ds list and get the coordinates
	target.xTo = enemy_list[| 0].x;
	target.yTo = enemy_list[| 0].y;
}

//always destroy a DS List when you've finished with it.
ds_list_destroy(enemy_list);