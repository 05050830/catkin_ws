#!/usr/bin/env python
# -*- coding: utf-8 -*-
import rospy
import socket
from std_msgs.msg import Float32,String
from geometry_msgs.msg import Twist
import sys
import time
import subprocess
reload(sys)
sys.setdefaultencoding("utf-8")
class soundcontrol():
	def __init__(self):
		rospy.init_node('listener')
		self.pub_topic=rospy.Publisher('topic_process',String,queue_size=5)
		self.pub_action = rospy.Publisher('move_action',Float32, queue_size=5)
		self.pub_soundshape = rospy.Publisher('sound_shape',String,queue_size=5)
		self.pub_vel = rospy.Publisher('cmd_vel',Twist, queue_size=5)
		self.pub_ans_shape=rospy.Publisher('ans_shape',String,queue_size=5)
		rospy.Subscriber("countrol_audio",String,self.callback)
		rospy.spin()
	def socket_client(self,data):
    		try:
        		s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        		s.connect(('192.168.43.65', 6666))
    		except socket.error as msg:
        		print(msg)
        		sys.exit(1)
    		print(data)
    		s.send(data.encode('utf-8'))
    		anser=s.recv(1024).decode('utf-8')
    		s.close()
    		return anser
	def callback(self,data):
		#anser = self.socket_client(data.data)
		anser=data.data
		print(anser)
		self.rate=rospy.Rate(5)
                if anser == '前進':
			a=Twist()
			a.linear.x=2.0
			a.linear.y=0.0
			a.linear.z=0.0
			a.angular.x=0.0
			a.angular.y=0.0
			a.angular.z=0.0
			time1=time.time()
			while not rospy.is_shutdown():
				time2=time.time()
				if time2-time1>=2:
					break;
				self.pub_vel.publish(a)
				self.rate.sleep()
		elif anser == '後退':
			a=Twist()
                        a.linear.x=-2.0
                        a.linear.y=0.0
                        a.linear.z=0.0
                        a.angular.x=0.0
                        a.angular.y=0.0
                        a.angular.z=0.0
                        time1=time.time()
                        while not rospy.is_shutdown():
                                time2=time.time()
                                if time2-time1>=2:
                                        break;
                                self.pub_vel.publish(a)
				self.rate.sleep()
		elif anser == '左轉':
			a=Twist()
                        a.linear.x=1.0
                        a.linear.y=0.0
                        a.linear.z=0.0
                        a.angular.x=0.0
                        a.angular.y=0.0
                        a.angular.z=2.0
			rate = rospy.Rate(5)
                        time1=time.time()
                        while not rospy.is_shutdown(): 
                                time2=time.time()
                                if time2-time1>=2:
                                        break;
                                self.pub_vel.publish(a)
				self.rate.sleep()
		elif anser == '右轉':
			a=Twist()
                        a.linear.x=1.0
                        a.linear.y=0.0
                        a.linear.z=0.0
                        a.angular.x=0.0
                        a.angular.y=0.0
                        a.angular.z=-2.0
                        time1=time.time()
                        while not rospy.is_shutdown():
                                time2=time.time()
                                if time2-time1>=2:
                                        break;
                                self.pub_vel.publish(a)
				self.rate.sleep()
		elif anser =='定位':
			subprocess.call (["raspistill -o /home/ubuntu/catkin_ws/moon.png"],shell=True)
			subprocess.call (["python /home/ubuntu/catkin_ws/picClient.py"],shell=True)
			subprocess.call (["raspistill -o /home/ubuntu/catkin_ws/moon.png"],shell=True)
                        subprocess.call (["python /home/ubuntu/catkin_ws/picClient.py"],shell=True)
		elif anser =='再見':
			self.pub_action.publish(9)
		elif anser =='看圖片':
			rospy.set_param("mode",0)
			subprocess.call (["raspistill -o /home/ubuntu/catkin_ws/moon.png"],shell=True)
			subprocess.call(["python /home/ubuntu/catkin_ws/simple_shape.py"],shell=True)
			subprocess.call (["mpg123 /home/ubuntu/catkin_ws/ask.mp3"],shell=True)
		elif anser =='完成了':
			if rospy.get_param('mode')==1:
				if rospy.get_param('finish')==1:
					subprocess.call (["mpg123 /home/ubuntu/catkin_ws/check.wav"],shell=True)
					time.sleep(5)
					subprocess.call (["raspistill -o /home/ubuntu/catkin_ws/moon.png"],shell=True)
                                	subprocess.call(["python /home/ubuntu/catkin_ws/topic_shape.py"],shell=True)
					rospy.set_param('finish',0)
				else:
	                        	self.pub_topic.publish('OK')
		elif anser =='會':
			if rospy.get_param("mode")==1:
				subprocess.call (["mpg123 /home/ubuntu/catkin_ws/check.wav"],shell=True)
				subprocess.call (["raspistill -o /home/ubuntu/catkin_ws/moon.png"],shell=True)
				subprocess.call(["python /home/ubuntu/catkin_ws/topic_shape.py"],shell=True)
		elif anser =='不會':
			if rospy.get_param("mode")==0:
                                rospy.set_param("hand", 0)
				self.pub_ans_shape.publish(rospy.get_param('ans_topic'))
			elif rospy.get_param("mode")==1:
				self.pub_topic.publish('xxx')

		else:
			if rospy.get_param("mode")==0 and (anser=='三角形' or anser=='正方形' or anser=='菱形'):
				self.pub_soundshape.publish(anser)

if __name__ == '__main__':
	soundcontrol()
