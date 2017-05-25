# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from rover_manual/obstacles.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import rover_manual.msg

class obstacles(genpy.Message):
  _md5sum = "c1b14cf1472bdc7f2a4a7c32f2465997"
  _type = "rover_manual/obstacles"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """obstacle[] obstacles

================================================================================
MSG: rover_manual/obstacle
float32 x
float32 y
#x and y are relative to robot position and orientation
float32 r
#radius of obstacle
bool dynamic
#if object is or was previously moving, i.e. this is a new obstacle in this position
"""
  __slots__ = ['obstacles']
  _slot_types = ['rover_manual/obstacle[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       obstacles

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(obstacles, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.obstacles is None:
        self.obstacles = []
    else:
      self.obstacles = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      length = len(self.obstacles)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacles:
        _x = val1
        buff.write(_get_struct_3fB().pack(_x.x, _x.y, _x.r, _x.dynamic))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.obstacles is None:
        self.obstacles = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacles = []
      for i in range(0, length):
        val1 = rover_manual.msg.obstacle()
        _x = val1
        start = end
        end += 13
        (_x.x, _x.y, _x.r, _x.dynamic,) = _get_struct_3fB().unpack(str[start:end])
        val1.dynamic = bool(val1.dynamic)
        self.obstacles.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      length = len(self.obstacles)
      buff.write(_struct_I.pack(length))
      for val1 in self.obstacles:
        _x = val1
        buff.write(_get_struct_3fB().pack(_x.x, _x.y, _x.r, _x.dynamic))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.obstacles is None:
        self.obstacles = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.obstacles = []
      for i in range(0, length):
        val1 = rover_manual.msg.obstacle()
        _x = val1
        start = end
        end += 13
        (_x.x, _x.y, _x.r, _x.dynamic,) = _get_struct_3fB().unpack(str[start:end])
        val1.dynamic = bool(val1.dynamic)
        self.obstacles.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3fB = None
def _get_struct_3fB():
    global _struct_3fB
    if _struct_3fB is None:
        _struct_3fB = struct.Struct("<3fB")
    return _struct_3fB
