## Project-Aether 1.0 ##
What are our requirements?
1. Fast and reliable.
2. Less overheads.
3. Deterministic Memory Management.
4. Simple syntax.

_Add more reasons_

## Entry point of our code ##
It is crucial to determine how the code will start its execution. Following are some of the approaches that can be applied.
1. C++ approach : ``` int main(int argc, char *argv[]) ```
2. Python approach : ``` if __name__ == '__main__' : main() ```
3. Java approach : ```class X {public static void main(String args[]) {} } ```
4. Our own approach : ....

_Add more approaches_ 

## Variable Declaration : ##
1. C++ Style : ``` Data_Type Name ; ```
2. Java Style : ``` Type Name ; ```
3. Python Style : ``` Name = value or just Name ```
4. Scala Style : ``` var myVar : String = "Foo" || val myVar : String= "Foo" ```
5. Julia Style : ```Similar to python ```
6. Our own style : ....

_Idea for custom variable Declaration in Aether_

```
Structure X {
    a: int = 10
    b: float = 20.0
    c: String
    d: const int
    e: Dictionary
    ....  
}
```
_This implied method is really clean and differentiates between the variables and their data type easily. It also follows a left to right approach which is often desired in a programming language. (Here the structure is created just for understanding)_
