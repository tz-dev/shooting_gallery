///scr_get_lowest_depth(x, y, obj)
//Returns the ID of the instance of obj with the lowest depth
//at the provided x and y coordinates.
//If no instance is found, returns -1.
// Example of syntax:

// grab_object = scr_get_lowest_depth(mouse_x, mouse_y, obj_enemy);
// if (grab_object != -1) {
//     //Do stuff with the grab_object
// }

var xx = argument0;
var yy =argument1;
var obj = argument2;
var obj_id = noone;
var ld = 999999;

if (!instance_exists(obj)) return -1;

with (obj) {
    if (point_in_rectangle(xx, yy, bbox_left, bbox_top, bbox_right, bbox_bottom)) {
    	if (depth < ld) {
            obj_id = id;
            ld = depth;
        }
    }
}

if (obj_id == noone) return -1;
else return obj_id;