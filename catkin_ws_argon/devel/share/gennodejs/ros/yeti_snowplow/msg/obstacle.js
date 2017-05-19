// Auto-generated. Do not edit!

// (in-package yeti_snowplow.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class obstacle {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x = null;
      this.y = null;
      this.r = null;
      this.dynamic = null;
    }
    else {
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('r')) {
        this.r = initObj.r
      }
      else {
        this.r = 0.0;
      }
      if (initObj.hasOwnProperty('dynamic')) {
        this.dynamic = initObj.dynamic
      }
      else {
        this.dynamic = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type obstacle
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [r]
    bufferOffset = _serializer.float32(obj.r, buffer, bufferOffset);
    // Serialize message field [dynamic]
    bufferOffset = _serializer.bool(obj.dynamic, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type obstacle
    let len;
    let data = new obstacle(null);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [r]
    data.r = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [dynamic]
    data.dynamic = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yeti_snowplow/obstacle';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '39f935e5dbd01abfb717919f7c2e8837';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 x
    float32 y
    #x and y are relative to robot position and orientation
    float32 r
    #radius of obstacle
    bool dynamic
    #if object is or was previously moving, i.e. this is a new obstacle in this position
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new obstacle(null);
    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.r !== undefined) {
      resolved.r = msg.r;
    }
    else {
      resolved.r = 0.0
    }

    if (msg.dynamic !== undefined) {
      resolved.dynamic = msg.dynamic;
    }
    else {
      resolved.dynamic = false
    }

    return resolved;
    }
};

module.exports = obstacle;
