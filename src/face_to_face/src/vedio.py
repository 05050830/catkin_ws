#!/usr/bin/env python
#encoding: utf8
import rospy, cv2
import numpy as np
from vidgear.gears import VideoGear
from vidgear.gears import NetGear
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from geometry_msgs.msg import Twist
class Vedio():
	def __init__(self):
        	self.server = NetGear(address = '192.168.0.100', port = '5054', protocol = 'udp',  pattern = 0, receive_mode = False, logging = True) #Define netgear server at your system IP address.
		sub=rospy.Subscriber("/cv_camera/image_raw",Image,self.get_image)
		self.bridge = CvBridge()
		self.image_org =None
		rospy.spin()
	def get_image(self,img):
		try:
			self.image_org = self.bridge.imgmsg_to_cv2(img,"bgr8")
			self.frame = np.array(self.image_org,dtype=np.uint8)
			self.server.send(self.frame)
		except CvBridgeError as e:
			rospy.logerr(e)
	def serverclose(self):
		self.server.close()
if __name__ =='__main__':
	rospy.init_node('vedio')
	fd=Vedio()
	if rospy.is_shutdown():
		fd.serverclose()
