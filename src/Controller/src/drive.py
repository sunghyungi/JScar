#!/usr/bin/env python3
import rospy
from Controller.msg import RCdata
from adafruit_servokit import ServoKit
from adafruit_motorkit import MotorKit

mkit = MotorKit()
skit = ServoKit(channels=16)

def rc_callback(rc):
    print("STR: {}, THR: {}, REC: {}".format(rc.steering, round(rc.throttle, 2), rc.record))
    # if rc.steering > 1: rc.steering = 1
    # if rc.steering < -1: rc.steering = -1
    if rc.throttle > 1: rc.throttle = 1
    if rc.throttle < -1: rc.throttle = -1

    skit.servo[0].angle = (rc.steering * (-60)) + 90
    mkit.motor1.throttle = round(rc.throttle, 2)
    mkit.motor2.throttle = round(rc.throttle, 2)
    mkit.motor3.throttle = round(rc.throttle, 2)
    mkit.motor4.throttle = round(rc.throttle, 2)

#     if 1 > round(rc.sidemove, 2) > 0.2 or -1 < round(rc.sidemove, 2) < -0.2:
#         mkit.motor1.throttle = -round(rc.sidemove, 2)
#         mkit.motor2.throttle = round(rc.sidemove, 2)
#         mkit.motor3.throttle = round(rc.sidemove, 2)
#         mkit.motor4.throttle = -round(rc.sidemove, 2)


rospy.init_node('CarController_sub')
sub = rospy.Subscriber('/RCrecv', RCdata, rc_callback)
rospy.spin()
