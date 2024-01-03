extends CharacterBody2D

@export var stats: Resource
var can_laser: bool = true
var can_grenade: bool = true
var can_take_hit: bool = true
@export var max_speed: int = 500
var speed: int = max_speed


signal shoot_laser(position, direction)
signal place_grenade(position, direction)

func _process(_delta):
	stats.player_position = global_position
	var direction = Input.get_vector("left", "right", "up", "down")
	
	velocity = direction * speed
	move_and_slide()
	
	# rotate player
	look_at(get_global_mouse_position())

	if Input.is_action_just_pressed("primary action") and can_laser and stats.laser_amount > 0:
		$MuzzleFlash.restart()
		stats.laser_amount -= 1
		var projectile_direction = (get_global_mouse_position() - position).normalized()
		var laser_markers = $LaserStartPositions.get_children()
		var selected_laser = laser_markers.pick_random()
		$LaserTimer.start()
		can_laser = false
		shoot_laser.emit(selected_laser.global_position, projectile_direction)
		
	if Input.is_action_just_pressed("secondary action") and can_grenade and stats.grenade_amount > 0:
		stats.grenade_amount -= 1
		var projectile_direction = (get_global_mouse_position() - position).normalized()
		$GranadeTimer.start()
		can_grenade = false
		place_grenade.emit($GrenadeStartPosition/Marker2D.global_position, projectile_direction)


func _on_laser_timer_timeout():
	can_laser = true


func _on_grenade_timer_timeout():
	can_grenade = true
	
func hit(value):
	if can_take_hit:
		stats.health -= value
		can_take_hit = false
		$HitTimer.start()


func _on_hit_timer_timeout():
	can_take_hit = true
