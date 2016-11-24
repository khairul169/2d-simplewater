tool
extends Sprite

export(ImageTexture) var displacement_map setget _set_dispmap, _get_dispmap;
export(float) var amplitudo = 0.005 setget _set_amplitudo, _get_amplitudo;
export(float) var speed = 1.0 setget _set_speed, _get_speed;
export(Vector2) var uv_size = Vector2(1,1) setget _set_uv_size, _get_uv_size;

var mat = CanvasItemMaterial.new();
var shader = preload("res://addons/khairul169.2dwater/2d_water.tres");

func _enter_tree():
	mat.set_shader(shader);
	set_material(mat);
	update_water();

func update_water():
	mat.set_shader_param("displacement_map", displacement_map);
	mat.set_shader_param("amplitudo", amplitudo);
	mat.set_shader_param("speed", speed);
	mat.set_shader_param("scaling", uv_size);

func _set_dispmap(new):
	displacement_map = new;
	update_water();

func _set_amplitudo(new):
	amplitudo = new;
	update_water();

func _set_speed(new):
	speed = new;
	update_water();

func _set_uv_size(new):
	uv_size = new;
	update_water();

func _get_dispmap():
	return displacement_map;

func _get_amplitudo():
	return amplitudo;

func _get_speed():
	return speed;

func _get_uv_size():
	return uv_size;
