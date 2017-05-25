// Auto-generated. Do not edit!

// (in-package yeti_snowplow.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let obstacle = require('./obstacle.js');

//-----------------------------------------------------------

class obstacles {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.obstacles = null;
    }
    else {
      if (initObj.hasOwnProperty('obstacles')) {
        this.obstacles = initObj.obstacles
      }
      else {
        this.obstacles = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type obstacles
    // Serialize message field [obstacles]
    // Serialize the length for message field [obstacles]
    bufferOffset = _serializer.uint32(obj.obstacles.length, buffer, bufferOffset);
    obj.obstacles.forEach((val) => {
      bufferOffset = obstacle.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type obstacles
    let len;
    let data = new obstacles(null);
    // Deserialize message field [obstacles]
    // Deserialize array length for message field [obstacles]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.obstacles = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.obstacles[i] = obstacle.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 13 * object.obstacles.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'yeti_snowplow/obstacles';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1b14cf1472bdc7f2a4a7c32f2465997';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    obstacle[] obstacles
    
    ================================================================================
    MSG: yeti_snowplow/obstacle
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
    const resolved = new obstacles(null);
    if (msg.obstacles !== undefined) {
      resolved.obstacles = new Array(msg.obstacles.length);
      for (let i = 0; i < resolved.obstacles.length; ++i) {
        resolved.obstacles[i] = obstacle.Resolve(msg.obstacles[i]);
      }
    }
    else {
      resolved.obstacles = []
    }

    return resolved;
    }
};

module.exports = obstacles;
