# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from yeti_snowplow/target.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import yeti_snowplow.msg

class target(genpy.Message):
  _md5sum = "cf232f9c15f895c77544704e246906a3"
  _type = "yeti_snowplow/target"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 dir
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
int32 id"""
  # Pseudo-constants
  FORWARD = 1
  BACKWARD = -1

  __slots__ = ['dir','location','PID','speed']
  _slot_types = ['int32','yeti_snowplow/location_point','bool','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       dir,location,PID,speed

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(target, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.dir is None:
        self.dir = 0
      if self.location is None:
        self.location = yeti_snowplow.msg.location_point()
      if self.PID is None:
        self.PID = False
      if self.speed is None:
        self.speed = 0.
    else:
      self.dir = 0
      self.location = yeti_snowplow.msg.location_point()
      self.PID = False
      self.speed = 0.

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
      _x = self
      buff.write(_get_struct_i6diBd().pack(_x.dir, _x.location.x, _x.location.y, _x.location.distance, _x.location.heading, _x.location.correctedX, _x.location.correctedY, _x.location.id, _x.PID, _x.speed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.location is None:
        self.location = yeti_snowplow.msg.location_point()
      end = 0
      _x = self
      start = end
      end += 65
      (_x.dir, _x.location.x, _x.location.y, _x.location.distance, _x.location.heading, _x.location.correctedX, _x.location.correctedY, _x.location.id, _x.PID, _x.speed,) = _get_struct_i6diBd().unpack(str[start:end])
      self.PID = bool(self.PID)
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
      _x = self
      buff.write(_get_struct_i6diBd().pack(_x.dir, _x.location.x, _x.location.y, _x.location.distance, _x.location.heading, _x.location.correctedX, _x.location.correctedY, _x.location.id, _x.PID, _x.speed))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.location is None:
        self.location = yeti_snowplow.msg.location_point()
      end = 0
      _x = self
      start = end
      end += 65
      (_x.dir, _x.location.x, _x.location.y, _x.location.distance, _x.location.heading, _x.location.correctedX, _x.location.correctedY, _x.location.id, _x.PID, _x.speed,) = _get_struct_i6diBd().unpack(str[start:end])
      self.PID = bool(self.PID)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i6diBd = None
def _get_struct_i6diBd():
    global _struct_i6diBd
    if _struct_i6diBd is None:
        _struct_i6diBd = struct.Struct("<i6diBd")
    return _struct_i6diBd
