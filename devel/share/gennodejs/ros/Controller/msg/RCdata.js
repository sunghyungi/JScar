// Auto-generated. Do not edit!

// (in-package Controller.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RCdata {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.steering = null;
      this.throttle = null;
      this.sidemove = null;
      this.record = null;
    }
    else {
      if (initObj.hasOwnProperty('steering')) {
        this.steering = initObj.steering
      }
      else {
        this.steering = 0.0;
      }
      if (initObj.hasOwnProperty('throttle')) {
        this.throttle = initObj.throttle
      }
      else {
        this.throttle = 0.0;
      }
      if (initObj.hasOwnProperty('sidemove')) {
        this.sidemove = initObj.sidemove
      }
      else {
        this.sidemove = 0.0;
      }
      if (initObj.hasOwnProperty('record')) {
        this.record = initObj.record
      }
      else {
        this.record = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RCdata
    // Serialize message field [steering]
    bufferOffset = _serializer.float32(obj.steering, buffer, bufferOffset);
    // Serialize message field [throttle]
    bufferOffset = _serializer.float32(obj.throttle, buffer, bufferOffset);
    // Serialize message field [sidemove]
    bufferOffset = _serializer.float32(obj.sidemove, buffer, bufferOffset);
    // Serialize message field [record]
    bufferOffset = _serializer.int32(obj.record, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RCdata
    let len;
    let data = new RCdata(null);
    // Deserialize message field [steering]
    data.steering = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [throttle]
    data.throttle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [sidemove]
    data.sidemove = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [record]
    data.record = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'Controller/RCdata';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5ea6417589b70ad53907ff4ffc0f21d6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 steering
    float32 throttle
    float32 sidemove
    int32 record
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RCdata(null);
    if (msg.steering !== undefined) {
      resolved.steering = msg.steering;
    }
    else {
      resolved.steering = 0.0
    }

    if (msg.throttle !== undefined) {
      resolved.throttle = msg.throttle;
    }
    else {
      resolved.throttle = 0.0
    }

    if (msg.sidemove !== undefined) {
      resolved.sidemove = msg.sidemove;
    }
    else {
      resolved.sidemove = 0.0
    }

    if (msg.record !== undefined) {
      resolved.record = msg.record;
    }
    else {
      resolved.record = 0
    }

    return resolved;
    }
};

module.exports = RCdata;
