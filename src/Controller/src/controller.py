#!/usr/bin/env python

import json
import rospy
from serial import Serial
from Controller.msg import RCdata

rospy.init_node('CarController_pub')
pub = rospy.Publisher('RCrecv', RCdata, queue_size=1)
# rate = rospy.Rate(10.0)

ser = Serial("/dev/ttyACM0", 115200, timeout=1)
for i in range(1, 20):
    data = ser.readline().decode('utf-8').rstrip('\n\r')
    print("Serial COM initialize : {}".format(i))

while True:
    data = ser.readline().decode('utf-8').rstrip('\n\r')
    try:
        dict = json.loads(data)
    except Exception as e:
        pass
    STR = (float(dict['str']-1250)/500*120 + float(30))
    STR = (float(90-STR))/float(60)
    THR = (float(dict['thr']-1500)/500)
    # LR = (float(dict['LR']-1500)/500)
    REC = int(dict['REC'])

    if STR > 1: STR = 1
    if STR < -1: STR = -1

    if THR > 1: THR = 1
    if THR < -1: THR = -1

    # if LR > 1: LR = 1
    # if LR < -1: LR = -1

    msg = RCdata(0.0, 0.0, 0.0, 0)
    
    msg.steering = STR
    msg.throttle = THR
    # msg.sidemove = LR
    msg.record = REC
    
    # print("str: {}, thr: {}, LR: {}, REC: {}".format(dict['str'], dict['thr'], dict['LR'], dict['REC']))
    print("str: {}, thr: {}, REC: {}".format(msg.steering, msg.throttle, msg.record))
    pub.publish(msg)
    # rate.sleep()

