// Auto-generated. Do not edit!

// (in-package yeti_snowplow.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let location_point = require('./location_point.js');

//-----------------------------------------------------------

class target {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.dir = null;
      this.location = null;
      this.PID = null;
      this.speed = null;
    }
    else {
      if (initObj.hasOwnProperty('dir')) {
        this.dir = initObj.dir
      }
      else {
        this.dir = 0;
      }
      if (initObj.hasOwnProperty('location')) {
        this.location = initObj.location
      }
      else {
        this.location = new location_point();
      }
      if (initObj.hasOwnProperty('PID')) {
        this.PID = initObj.PID
      }
      else {
        this.PID = false;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type target
    // Serialize message field [dir]
    bufferOffset = _serializer.int32(obj.dir, buffer, bufferOffset);
    // Serialize message field [location]
    bufferOffset = location_point.serialize(obj.location, buffer, bufferOffset);
    // Serialize message field [PID]
    bufferOffset = _serializer.bool(obj.PID, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.float64(obj.speed, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type target
    let len;
    let data = new target(null);
    // Deserialize message field [dir]
    data.dir = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [location]
    data.location = location_point.deserialize(buffer, bufferOffset);
    // Deserialize message field [PID]
    data.PID = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 65;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yeti_snowplow/target';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf232f9c15f895c77544704e246906a3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 dir
    int32 FORWARD=1
    int32 BACKWARD=-1
    location_point location
    bool PID
    float64 speed
    ================================================================================
    MSG: yeti_snowplow/location_point
    float64 x
    float64 y
    float64 distance
    float64 heading
    float64 correctedX
    float64 correctedY
    int32 id
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new target(null);
    if (msg.dir !== undefined) {
      resolved.dir = msg.dir;
    }
    else {
      resolved.dir = 0
    }

    if (msg.location !== undefined) {
      resolved.location = location_point.Resolve(msg.location)
    }
    else {
      resolved.location = new location_point()
    }

    if (msg.PID !== undefined) {
      resolved.PID = msg.PID;
    }
    else {
      resolved.PID = false
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0.0
    }

    return resolved;
    }
};

// Constants for message
target.Constants = {
  FORWARD: 1,
  BACKWARD: -1,
}

module.exports = target;
