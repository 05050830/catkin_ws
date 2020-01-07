#!/usr/bin/python
import socket
import struct
import os
from std_msgs.msg import String
import sys
import time
import rospy
reload(sys)
sys.setdefaultencoding("utf-8")
# host = socket.gethostname()
# port = 5000
rospy.init_node('pic_cmd_vel')

host = '192.168.43.66'
port = 6667
address = (host, port)

s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect(address) 

##################################
print('start send image')
filepath = '/home/ubuntu/catkin_ws/moon.png'
while True:
    if os.path.isfile(filepath):
            fhead = struct.pack('128sl',bytes(os.path.basename(filepath).encode('utf-8')),os.stat(filepath).st_size)
            s.send(fhead)
            print('client filepath: {0}'.format(filepath))

            fp = open(filepath, 'rb')
            while 1:
                data = fp.read(1024)
                if not data:
                    print('{0} file send over...'.format(filepath))
                    break
                s.send(data)
    rev=s.recv(1024)
    print(rev)
    fp.close()
    s.close()
    break
print('transmit end')
rospy.set_param('ans_topic',rev)

##################################

