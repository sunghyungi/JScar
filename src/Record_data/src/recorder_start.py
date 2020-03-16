#!/usr/bin/env python
'''
This script is used to start/stop record rosbag using Joy ROS message
'''
import rospy
import roslib
import subprocess
import os 
import signal
from Controller.msg import RCdata
import Jetson.GPIO as gpio



DEFAULT_LOCATION = "/home/jjs/git/JScar/bag/"

def callback(rc):
    global recording, start_rosbag

    if rc.record == 1 and recording is False:
        recording = True
        start_rosbag = subprocess.Popen('roslaunch Record_data recorder.launch', stdin=subprocess.PIPE, shell=True)
        print("\n\nRosbag Recorder started...")
        gpio.output(18, 1)
    # else:
    #     print("\nRecorder has been activated already..\n")

    if rc.record == 0 and recording is True:
        recording = False
        terminate_process_and_children(start_rosbag)
        print("\n\nRosbag Recorder stopped...")
        gpio.output(18, 0)

    # else:
	#     print("\nRecorder is not activated yet...Press A to start record")

def terminate_process_and_children(p):
    ps_command = subprocess.Popen("ps -o pid --ppid %d --noheaders" % p.pid, shell=True, stdout=subprocess.PIPE)
    ps_output = ps_command.stdout.read()
    retcode = ps_command.wait()
    assert retcode == 0, "ps command returned %d" % retcode
    for pid_str in ps_output.split("\n")[:-1]:
        os.kill(int(pid_str), signal.SIGINT)
    p.terminate()

def start():
    global start_astra, start_car
    rospy.init_node("recorder_controller", anonymous=True)
    start_car = subprocess.Popen('roslaunch Controller JScar.launch', stdin=subprocess.PIPE, shell=True)
    start_astra = subprocess.Popen('roslaunch astra_camera astrapro.launch', stdin=subprocess.PIPE, shell=True)     
    sub = rospy.Subscriber('/RCrecv', RCdata, callback)
    rospy.spin()

if __name__ == "__main__":
   recording = False
   gpio.setmode(gpio.BOARD)
   gpio.setup(18, gpio.OUT)
   gpio.output(18, 0)
   start()

