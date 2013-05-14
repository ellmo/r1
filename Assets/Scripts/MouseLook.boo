import UnityEngine

class MouseLook (MonoBehaviour):
	
	rot_x = 0.0f
	rot_x_v = 0.0f
	rot_x_smooth = 0.0f
	rot_y = 0.0f
	rot_y_v = 0.0f
	rot_y_smooth = 0.0f
	sensitivity = 3.0f
	smoothing = 0.1f
	
	def Start ():
		pass
	
	def Update ():
		rot_x -= Input.GetAxis('Mouse Y') * sensitivity
		rot_y += Input.GetAxis('Mouse X') * sensitivity
		
		rot_x_smooth = Mathf.SmoothDamp(rot_x_smooth, rot_x, rot_x_v, smoothing)
		rot_y_smooth = Mathf.SmoothDamp(rot_y_smooth, rot_y, rot_y_v, smoothing)
		
		transform.rotation = Quaternion.Euler(rot_x_smooth, rot_y_smooth, 0)
