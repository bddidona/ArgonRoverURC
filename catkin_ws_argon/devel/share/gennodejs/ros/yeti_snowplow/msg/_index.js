
"use strict";

let turn = require('./turn.js');
let joystick = require('./joystick.js');
let robot_position = require('./robot_position.js');
let obstacle = require('./obstacle.js');
let wheel_speeds = require('./wheel_speeds.js');
let location_point = require('./location_point.js');
let obstacles = require('./obstacles.js');
let target = require('./target.js');

module.exports = {
  turn: turn,
  joystick: joystick,
  robot_position: robot_position,
  obstacle: obstacle,
  wheel_speeds: wheel_speeds,
  location_point: location_point,
  obstacles: obstacles,
  target: target,
};
