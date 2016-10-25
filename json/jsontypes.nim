import json

# 7 different kind on json nodes (JNode)
assert parseJson("null").kind == JNull
assert parseJson("true").kind == JBool
assert parseJson("100").kind == JInt
assert parseJson("3.14").kind == JFloat
assert parseJson("\"Hello world\"").kind == JString
# Map of string and JNode
assert parseJson("""{"key": "value"}""").kind == JObject
assert parseJson("[1, 2, 3]").kind == JArray

# Tree can be formed using JObject node (coz its value is again JNode)
let data = """
            {"username" : "ravi teja"}
           """
let jData = parseJson(data)
assert jData.kind == JObject
assert jData["username"].kind ==  JString
assert jData["username"].str == "ravi teja"

# Invalid json as string content is foo. not "foo"
#let j = parseJson("foo")
#

# Unit testing
#
when isMainModule:
  block:
    let data = """
                  {"uname" : "ravi", "passwd" : "teja"}
               """
    let parsed = parseJson(data)
    doAssert parsed["uname"].getStr() == "ravi"
    doAssert parsed["passwd"].getStr() == "teja"
