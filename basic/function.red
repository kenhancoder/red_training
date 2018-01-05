Red [
    Title: "example about function"
]

say: func [message[string!]][
    print message
]

say "hello, world"


add_num: func [num[integer!] return: [integer!]][
    num + 10
]

print add_num 10
result: add_num 20
print result


temp: "test temp"
print temp
temp_func: func [num[integer!] return: [integer!]][
    temp: num + 1
    temp
]
print temp_func 1

temp: "test temp"
print temp
temp_func_local: func [num[integer!] return: [integer!] /local temp][
    temp: num + 1
    temp
]
print temp_func_local 1

temp: "test temp"
print temp

temp_function: function [num[integer!] return: [integer!]][
    temp: num + 1
    temp
]
print temp_function 1