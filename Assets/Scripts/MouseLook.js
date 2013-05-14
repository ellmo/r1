var rotation_x : float;
var rotation_y : float;
var sensitivity :float = 1;

function Update () {
	rotation_x -= Input.GetAxis('Mouse Y') * sensitivity;
	rotation_y += Input.GetAxis('Mouse X') * sensitivity;
	
	transform.rotation = Quaternion.Euler(rotation_x, rotation_y, 0);
}