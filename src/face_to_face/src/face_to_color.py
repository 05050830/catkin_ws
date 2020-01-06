#!/usr/bin/env python
# -*- coding: utf-8 -*-
import rospy,cv2
from numba import jit
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image
from geometry_msgs.msg import Twist
bridge = None
pub = None
sub = None
def first():
	global bridge,pub,sub
	sub=rospy.Subscriber("/cv_camera/image_raw",Image,get_image)
	bridge = CvBridge()
	pub=rospy.Publisher("color",Image,queue_size=2)
	rospy.spin()
def get_image(img):
	global bridge,pub
	try:
		image_org = bridge.imgmsg_to_cv2(img,"bgr8")
	except CvBridgeError as e:
		rospy.logerr(e)
	(B,G,R)=cv2.split(image_org)
	(row1,col1,ch)=image_org.shape
	row2=0
	col2=0
	colimg=color(image_org,row1,col1,row2,col2,B,G,R)
	pub.publish(bridge.cv2_to_imgmsg(colimg,"bgr8"))

def color(img_org,row1,col1,row2,col2,B,G,R):
    	for i in range(img_org.shape[0]):
        	for j in range(img_org.shape[1]):
            		if B[i,j]<130 and G[i,j]<130 and R[i,j]>=160:
                		if i<row1:
                    			row1 = i
                		if j<col1:
                    			col1 = j
                		if i>row2:
                    			row2=i
                		if j >col2:
                    			col2=j
	cv2.rectangle(img_org,(col1 - 1, row1 - 1),(col2 + 1, row2 + 1),(0, 0, 255), 1)
	return img_org
if __name__=='__main__':
	rospy.init_node('face_to_color')
	first()

