# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from Controller/RCdata.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RCdata(genpy.Message):
  _md5sum = "5ea6417589b70ad53907ff4ffc0f21d6"
  _type = "Controller/RCdata"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 steering
float32 throttle
float32 sidemove
int32 record"""
  __slots__ = ['steering','throttle','sidemove','record']
  _slot_types = ['float32','float32','float32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       steering,throttle,sidemove,record

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RCdata, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.steering is None:
        self.steering = 0.
      if self.throttle is None:
        self.throttle = 0.
      if self.sidemove is None:
        self.sidemove = 0.
      if self.record is None:
        self.record = 0
    else:
      self.steering = 0.
      self.throttle = 0.
      self.sidemove = 0.
      self.record = 0

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
      buff.write(_get_struct_3fi().pack(_x.steering, _x.throttle, _x.sidemove, _x.record))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.steering, _x.throttle, _x.sidemove, _x.record,) = _get_struct_3fi().unpack(str[start:end])
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
      buff.write(_get_struct_3fi().pack(_x.steering, _x.throttle, _x.sidemove, _x.record))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 16
      (_x.steering, _x.throttle, _x.sidemove, _x.record,) = _get_struct_3fi().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_3fi = None
def _get_struct_3fi():
    global _struct_3fi
    if _struct_3fi is None:
        _struct_3fi = struct.Struct("<3fi")
    return _struct_3fi
