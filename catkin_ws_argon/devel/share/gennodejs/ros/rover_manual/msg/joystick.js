// Auto-generated. Do not edit!

// (in-package rover_manual.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class joystick {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.A = null;
      this.B = null;
      this.X = null;
      this.Y = null;
      this.LB = null;
      this.RB = null;
      this.Back = null;
      this.Start = null;
      this.Guide = null;
      this.LS = null;
      this.RS = null;
      this.LeftStick_LR = null;
      this.LeftStick_UD = null;
      this.RightStick_LR = null;
      this.RightStick_UD = null;
      this.LT = null;
      this.RT = null;
      this.DPad_LR = null;
      this.DPad_UD = null;
    }
    else {
      if (initObj.hasOwnProperty('A')) {
        this.A = initObj.A
      }
      else {
        this.A = false;
      }
      if (initObj.hasOwnProperty('B')) {
        this.B = initObj.B
      }
      else {
        this.B = false;
      }
      if (initObj.hasOwnProperty('X')) {
        this.X = initObj.X
      }
      else {
        this.X = false;
      }
      if (initObj.hasOwnProperty('Y')) {
        this.Y = initObj.Y
      }
      else {
        this.Y = false;
      }
      if (initObj.hasOwnProperty('LB')) {
        this.LB = initObj.LB
      }
      else {
        this.LB = false;
      }
      if (initObj.hasOwnProperty('RB')) {
        this.RB = initObj.RB
      }
      else {
        this.RB = false;
      }
      if (initObj.hasOwnProperty('Back')) {
        this.Back = initObj.Back
      }
      else {
        this.Back = false;
      }
      if (initObj.hasOwnProperty('Start')) {
        this.Start = initObj.Start
      }
      else {
        this.Start = false;
      }
      if (initObj.hasOwnProperty('Guide')) {
        this.Guide = initObj.Guide
      }
      else {
        this.Guide = false;
      }
      if (initObj.hasOwnProperty('LS')) {
        this.LS = initObj.LS
      }
      else {
        this.LS = false;
      }
      if (initObj.hasOwnProperty('RS')) {
        this.RS = initObj.RS
      }
      else {
        this.RS = false;
      }
      if (initObj.hasOwnProperty('LeftStick_LR')) {
        this.LeftStick_LR = initObj.LeftStick_LR
      }
      else {
        this.LeftStick_LR = 0.0;
      }
      if (initObj.hasOwnProperty('LeftStick_UD')) {
        this.LeftStick_UD = initObj.LeftStick_UD
      }
      else {
        this.LeftStick_UD = 0.0;
      }
      if (initObj.hasOwnProperty('RightStick_LR')) {
        this.RightStick_LR = initObj.RightStick_LR
      }
      else {
        this.RightStick_LR = 0.0;
      }
      if (initObj.hasOwnProperty('RightStick_UD')) {
        this.RightStick_UD = initObj.RightStick_UD
      }
      else {
        this.RightStick_UD = 0.0;
      }
      if (initObj.hasOwnProperty('LT')) {
        this.LT = initObj.LT
      }
      else {
        this.LT = 0.0;
      }
      if (initObj.hasOwnProperty('RT')) {
        this.RT = initObj.RT
      }
      else {
        this.RT = 0.0;
      }
      if (initObj.hasOwnProperty('DPad_LR')) {
        this.DPad_LR = initObj.DPad_LR
      }
      else {
        this.DPad_LR = 0.0;
      }
      if (initObj.hasOwnProperty('DPad_UD')) {
        this.DPad_UD = initObj.DPad_UD
      }
      else {
        this.DPad_UD = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type joystick
    // Serialize message field [A]
    bufferOffset = _serializer.bool(obj.A, buffer, bufferOffset);
    // Serialize message field [B]
    bufferOffset = _serializer.bool(obj.B, buffer, bufferOffset);
    // Serialize message field [X]
    bufferOffset = _serializer.bool(obj.X, buffer, bufferOffset);
    // Serialize message field [Y]
    bufferOffset = _serializer.bool(obj.Y, buffer, bufferOffset);
    // Serialize message field [LB]
    bufferOffset = _serializer.bool(obj.LB, buffer, bufferOffset);
    // Serialize message field [RB]
    bufferOffset = _serializer.bool(obj.RB, buffer, bufferOffset);
    // Serialize message field [Back]
    bufferOffset = _serializer.bool(obj.Back, buffer, bufferOffset);
    // Serialize message field [Start]
    bufferOffset = _serializer.bool(obj.Start, buffer, bufferOffset);
    // Serialize message field [Guide]
    bufferOffset = _serializer.bool(obj.Guide, buffer, bufferOffset);
    // Serialize message field [LS]
    bufferOffset = _serializer.bool(obj.LS, buffer, bufferOffset);
    // Serialize message field [RS]
    bufferOffset = _serializer.bool(obj.RS, buffer, bufferOffset);
    // Serialize message field [LeftStick_LR]
    bufferOffset = _serializer.float32(obj.LeftStick_LR, buffer, bufferOffset);
    // Serialize message field [LeftStick_UD]
    bufferOffset = _serializer.float32(obj.LeftStick_UD, buffer, bufferOffset);
    // Serialize message field [RightStick_LR]
    bufferOffset = _serializer.float32(obj.RightStick_LR, buffer, bufferOffset);
    // Serialize message field [RightStick_UD]
    bufferOffset = _serializer.float32(obj.RightStick_UD, buffer, bufferOffset);
    // Serialize message field [LT]
    bufferOffset = _serializer.float32(obj.LT, buffer, bufferOffset);
    // Serialize message field [RT]
    bufferOffset = _serializer.float32(obj.RT, buffer, bufferOffset);
    // Serialize message field [DPad_LR]
    bufferOffset = _serializer.float32(obj.DPad_LR, buffer, bufferOffset);
    // Serialize message field [DPad_UD]
    bufferOffset = _serializer.float32(obj.DPad_UD, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type joystick
    let len;
    let data = new joystick(null);
    // Deserialize message field [A]
    data.A = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [B]
    data.B = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [X]
    data.X = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Y]
    data.Y = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [LB]
    data.LB = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [RB]
    data.RB = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Back]
    data.Back = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Start]
    data.Start = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [Guide]
    data.Guide = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [LS]
    data.LS = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [RS]
    data.RS = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [LeftStick_LR]
    data.LeftStick_LR = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LeftStick_UD]
    data.LeftStick_UD = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RightStick_LR]
    data.RightStick_LR = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RightStick_UD]
    data.RightStick_UD = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [LT]
    data.LT = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [RT]
    data.RT = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [DPad_LR]
    data.DPad_LR = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [DPad_UD]
    data.DPad_UD = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 43;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rover_manual/joystick';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2638f5eded79bb441e076bbda419a866';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool A
    bool B
    bool X
    bool Y
    bool LB
    bool RB
    bool Back
    bool Start
    bool Guide
    bool LS
    bool RS
    
    float32 LeftStick_LR
    float32 LeftStick_UD
    float32 RightStick_LR
    float32 RightStick_UD
    float32 LT
    float32 RT
    float32 DPad_LR
    float32 DPad_UD
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new joystick(null);
    if (msg.A !== undefined) {
      resolved.A = msg.A;
    }
    else {
      resolved.A = false
    }

    if (msg.B !== undefined) {
      resolved.B = msg.B;
    }
    else {
      resolved.B = false
    }

    if (msg.X !== undefined) {
      resolved.X = msg.X;
    }
    else {
      resolved.X = false
    }

    if (msg.Y !== undefined) {
      resolved.Y = msg.Y;
    }
    else {
      resolved.Y = false
    }

    if (msg.LB !== undefined) {
      resolved.LB = msg.LB;
    }
    else {
      resolved.LB = false
    }

    if (msg.RB !== undefined) {
      resolved.RB = msg.RB;
    }
    else {
      resolved.RB = false
    }

    if (msg.Back !== undefined) {
      resolved.Back = msg.Back;
    }
    else {
      resolved.Back = false
    }

    if (msg.Start !== undefined) {
      resolved.Start = msg.Start;
    }
    else {
      resolved.Start = false
    }

    if (msg.Guide !== undefined) {
      resolved.Guide = msg.Guide;
    }
    else {
      resolved.Guide = false
    }

    if (msg.LS !== undefined) {
      resolved.LS = msg.LS;
    }
    else {
      resolved.LS = false
    }

    if (msg.RS !== undefined) {
      resolved.RS = msg.RS;
    }
    else {
      resolved.RS = false
    }

    if (msg.LeftStick_LR !== undefined) {
      resolved.LeftStick_LR = msg.LeftStick_LR;
    }
    else {
      resolved.LeftStick_LR = 0.0
    }

    if (msg.LeftStick_UD !== undefined) {
      resolved.LeftStick_UD = msg.LeftStick_UD;
    }
    else {
      resolved.LeftStick_UD = 0.0
    }

    if (msg.RightStick_LR !== undefined) {
      resolved.RightStick_LR = msg.RightStick_LR;
    }
    else {
      resolved.RightStick_LR = 0.0
    }

    if (msg.RightStick_UD !== undefined) {
      resolved.RightStick_UD = msg.RightStick_UD;
    }
    else {
      resolved.RightStick_UD = 0.0
    }

    if (msg.LT !== undefined) {
      resolved.LT = msg.LT;
    }
    else {
      resolved.LT = 0.0
    }

    if (msg.RT !== undefined) {
      resolved.RT = msg.RT;
    }
    else {
      resolved.RT = 0.0
    }

    if (msg.DPad_LR !== undefined) {
      resolved.DPad_LR = msg.DPad_LR;
    }
    else {
      resolved.DPad_LR = 0.0
    }

    if (msg.DPad_UD !== undefined) {
      resolved.DPad_UD = msg.DPad_UD;
    }
    else {
      resolved.DPad_UD = 0.0
    }

    return resolved;
    }
};

module.exports = joystick;
