## Project-Aether 1.0 ##
What are our requirements?
1. Fast and reliable.
2. Less overheads.
3. Deterministic Memory Management.
4. Simple syntax.

## Syntax ##
__Data type declaration__
```
var_name : modifier data_type (value)
a : 4
b : long int (4)
c : string ("Lexer!")
x, y, z : int, real, string
f : {int, float}
```
__Macro declaration__
```
define pi as 3.1414
define pi as function_name()
```

__For statement__
```
for(var_name : data_type ; condition ; update)
  statements

for var_name : data_type in array or iterator
  statements
```

__While statement__
```
while(condition)
  statements
```

__Function declaration__
```
function_name(arg_list : data_type) : return_type
  statements

f(x) = x + 4 or x*x for x in iterator
```

__if statement__
```
if(condition)
  statements
elif(condition)
  statements
else
  statements
```

__switch(arg)__
```
...same as cpp...
```

__enum__
```
...same as cpp...
```

__union__
```
...same as cpp...
```

__Class__
```
class class_name
  ...same as cpp...
```

__Inheritance__
```
class class_name : root_class visibility_mode
  statements
```

__Constructor__
```
class_name(arg_list : data_type)
  statements

class_name(arg_list : data_type) {...same as cpp...}
```


__Pointer__
```
a : pointer (addr(var_name))

b : pointer
b = addr(a)
```
