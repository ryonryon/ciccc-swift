import Cocoa

func swapTwoStrings(_ a: inout String, _ b: inout String){
    let temp = a
    a = b
    b = temp
}

var aStr = "10"
var bStr = "12"

swapTwoStrings(&aStr, &bStr)

print(aStr)
print(bStr)

swap(&aStr, &bStr)

print(aStr)
print(bStr)

func swapTowValues<T>(_ a: inout T, _ b: inout T){
    let temp = a
    a = b
    b = temp
}

var aDouble = 10.0
var bDouble = 15.0
swapTowValues(&aDouble, &bDouble)
print(aDouble)
print(bDouble)


struct Stack<Element>: CustomStringConvertible {
    var description: String {
        return String(describing: items)
    }
    
    private var items = [Element]()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        return items.removeFirst()
    }
}

var myStack = Stack<String>()
myStack.push("test1")
myStack.push("test2")
myStack.push("test4")
myStack.pop()
myStack.push("test5")

print(myStack)
