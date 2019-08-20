# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?

bar(foo)

# It would return "no". As 'foo' would return "yes", so therefore bar("yes") would be the next line. The ternary if statement in bar would
# evaluate param == "no" as false. Therefore it would evaluate to the RIGHT side of the : which is,   false side ? true-side : false-side
# and the right-side is "no" so the evaluation of the methods return "no"