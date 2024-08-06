class_name BodyConstructor extends Node3D

# RenderingServer expects references to be kept around.
var mesh

func _ready():
	# Create a visual instance (for 3D).
	var instance = RenderingServer.instance_create()
	# Set the scenario from the world, this ensures it
	# appears with the same objects as the scene.
	var scenario = get_world_3d().scenario
	RenderingServer.instance_set_scenario(instance, scenario)
	# Add a mesh to it.
	# Remember, keep the reference.
	mesh = load("res://lukkys_props/barrel.glb")
	RenderingServer.instance_set_base(instance, mesh)
	# Move the mesh around.
	var xform = Transform3D(Basis(), Vector3(0, 0, 0))
	RenderingServer.instance_set_transform(instance, xform)
	
