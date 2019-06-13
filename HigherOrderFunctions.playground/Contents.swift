import UIKit

//: - Higher Order Functions
//: - A function that takes a function or returns a function

//: forEach, map, filter, reduce

var elements = [1, 2, 3, 4, 5]

//for i in 0..<elements.count {
//  print(elements[i])
//}

func printElement(element: Int) -> Void {
  print(element)
}
var printElement2: (_ element: Int) -> Void = {
  element in print(element)
}

// trailing closure
// $0: first arg
// $1: second arg
// ...
elements.forEach { print($0) }

// map
let mapped = elements.map { $0 * 2 }
print(mapped)

// filter
let filtered = elements.filter { $0 % 2 == 0 }
print(filtered)

// reduce
let reduced = elements.reduce(0) { $0 + $1 }
print(reduced)

let summ = elements.reduce(0, +)
print(summ)
