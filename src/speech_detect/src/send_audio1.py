#!/usr/bin/python
# -*- coding: utf-8 -*-
import sys
reload(sys)
sys.setdefaultencoding('utf8')
import speech_recognition as sr
from time import sleep


import rospy

from std_msgs.msg import String


import pyaudio

import snowboydecoder

import signal

import os
interrupted = False
pub_=None
def firstrun():

        # Initializing publisher with buffer size of 10 messages
	global pub_
        pub_ = rospy.Publisher("countrol_audio", String, queue_size=10)

        # initialize node
        rospy.init_node("audio_control")
        # Call custom function on node shutdown
        rospy.on_shutdown(shutdown)
        # self.i = 1
	
	
        # All set. Publish to topic
        transfer_audio_msg()
def audioRecorderCallback(fname):
        print("converting audio to text")
        r = sr.Recognizer()
        with sr.AudioFile(fname) as source:
           audio = r.record(source)  # read the entire audio file
    # recognize speech using Google Speech Recognition
        try:
        # for testing purposes, we're just using the default API key
        # to use another API key, use `r.recognize_google(audio, key="GOOGLE_SPEECH_RECOGNITION_API_KEY")`
        # instead of `r.recognize_google(audio)`
	    word=r.recognize_google(audio,language="zh-TW")
	    print(word)
            global pub_
            pub_.publish(word)
        except sr.UnknownValueError:
            print("Google Speech Recognition could not understand audio")
        except sr.RequestError as e:
            print("Could not request results from Google Speech Recognition service; {0}".format(e))

        os.remove(fname)



def detectedCallback():
        sys.stdout.write("recording audio...")
	sys.stdout.flush()
def signal_handler(signal, frame):
	global interrupted
        interrupted = True

def interrupt_callback():
	global interrupted
        return interrupted

def transfer_audio_msg():
       

        rospy.loginfo("audio input node will start after delay of 5 seconds")
        sleep(5)
        # Checking if audio file given or system microphone is needed

def shutdown():
       
        # command executed after Ctrl+C is pressed
        rospy.loginfo("Stop VoiceControl")
        rospy.sleep(1)
if __name__ == "__main__":

    firstrun()
    signal.signal(signal.SIGINT,signal_handler)
    detector = snowboydecoder.HotwordDetector('/home/ubuntu/catkin_ws/src/speech_detect/src/white.pmdl', sensitivity=0.6)
    print "Listening... Press Ctrl+C to exit"
    detector.start(detected_callback=detectedCallback,
    audio_recorder_callback=audioRecorderCallback,
               interrupt_check=interrupt_callback,
               sleep_time=0.01)

    detector.terminate()

