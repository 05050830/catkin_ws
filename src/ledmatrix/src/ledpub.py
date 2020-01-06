#!/usr/bin/python
# -*- coding: utf-8 -*-
import MySQLdb
from flask import Flask, request  # 引入request对象
import rospy
from std_msgs.msg import String
import time
from geometry_msgs.msg import Twist
from std_msgs.msg import Float32
import subprocess

pub=None
pub_vel=None
face_select1=None
globalvar=None
count=0
def sendled():
	global pub,pub_vel,face_select1,move_action
	pub = rospy.Publisher('ledmatrix', String, queue_size=10)
	pub_vel = rospy.Publisher('cmd_vel',Twist,queue_size=10)
	face_select1 = rospy.Publisher('face_select',Float32,queue_size=10)
	move_action=rospy.Publisher('move_action',Float32,queue_size=10)
	#rospy.Subscriber("topic_process",String,globalvar)

	rospy.init_node('ledmatrix_node')
def connectsql(id):
    db = MySQLdb.connect(host="192.168.43.65",user="root", passwd="root1234", db="mcu_robot")
    cursor = db.cursor()

# 執行 MySQL 查詢指令
    command="SELECT * FROM `topic_array` WHERE `ID`="+id
    cursor.execute(command)

# 取回所有查詢結果
    results = cursor.fetchall()
    global pub
# 輸出結果 
    for record in results:
      rate = rospy.Rate(5)
      i=2
      while not rospy.is_shutdown():
      	if i<len(record):
      		pub.publish(record[i])
      	else:
     		break;
      	i+=1
      	rate.sleep()
# 關閉連線
    db.close()
app = Flask(__name__)
@app.route("/index", methods=["GET", "POST"])
def index():
    print(request.data)
    global topic
    # args是用来提取url中?后拼接的参数（查询字符串QueryString）
    id = request.args.get("id")  # 127.0.0.1:5000/index?city=shenzhen (类似字典的对象)
    face = request.args.get("face")
    vel = request.args.get("vel")
    topic = request.args.get("topic")
    face_select=request.args.get("face_select")
    act=request.args.get('act')
    if id!=None:
	print(id);
	connectsql(id)
	return "id=%s" %(id)
    elif face !=None:
	face_str=face.split(',')
	face_face1=[]
	for i in range(16):
		face_int=int(face_str[i])
		for j in range(16):
			face_face1.append(face_int%2)
			face_int=face_int/2
		print(face_face1)
		str1="".join(str(o) for o in face_face1)
		str2=str1[::-1]
		print(str2)
		time.sleep(0.1)
		pub.publish(str2)
		face_face1=[]
	return "face=%s" %(face_str)
    elif topic!=None:
	db = MySQLdb.connect(host="192.168.43.65",user="root", passwd="root1234", db="mcu_robot")
	cursor = db.cursor()
        topic1="'"+topic+"'"
# 執行 MySQL 查詢指令
	command="SELECT * FROM `led_array_2` WHERE `Name`="+topic1
	cursor.execute(command)

# 取回所有查詢結果
	results = cursor.fetchall()
	global pub
# 輸出結果 
	for record in results:
		rate = rospy.Rate(5)
      		i=2
      		while not rospy.is_shutdown():
        		if i<len(record):
                		pub.publish(record[i])
        		else:
                		break;
        		i+=1
        		rate.sleep()
# 關閉連線
    	db.close()

	rospy.set_param('mode',1)
	rospy.set_param('finish',0)
	subprocess.call (["mpg123 /home/ubuntu/catkin_ws/asktopic.wav"],shell=True)
	rospy.set_param("ans_topic", topic)
	return "topic="+topic
    elif face_select!=None:
	global face_select1
	face_select1.publish(int(face_select))
	print(face_select)
	return "face_select="+face_select
    elif act!=None:
        global move_action
        move_action.publish(int(act))
        print(act)
        return "move_action="+act

    elif vel!=None:
		vel=int(vel)
		if vel == 1:
			rate=rospy.Rate(5)
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
				if time2-time1>=1:
					break
				pub_vel.publish(a)
				rate.sleep()
		elif vel ==2:
			rate=rospy.Rate(5)
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
                                if time2-time1>=1:
                                        break
                                pub_vel.publish(a)
                                rate.sleep()
		elif vel==3:
			rate=rospy.Rate(5)
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
                                if time2-time1>=1:
                                        break;
                                pub_vel.publish(a)
                                rate.sleep()
		else:
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
                                if time2-time1>=1:
                                        break;
                                pub_vel.publish(a)
                                rate.sleep()
		return "vel=%d" %(vel)
if __name__ == '__main__':
	try:
		sendled()
		app.run(host="192.168.43.66", port=5000, debug=True)
	except rospy.ROSInterruptExceptton:
		pass
