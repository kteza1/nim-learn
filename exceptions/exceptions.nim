proc exception() =
  raise newException(IOError, "My custom exception")

try:
  exception()
except IOError:
  echo "IO Error --> " & getCurrentExceptionMsg()
except:
  echo "Exception ---> " & getCurrentExceptionMsg()
