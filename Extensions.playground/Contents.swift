import UIKit

//: Extensions

//: - if you want to extend the functionalities of an existing class or a struct, you can create an extension

extension String {
  // function
  func canadianized() -> String {
    return self + ", ey?"
  }
}
let s = "How are you doing"
s.canadianized()
extension Int {
  // computed propertys
  var double: Int {
    return 2 * self
  }
  
  var isEven: Bool {
    return self % 2 == 0
  }
}

print(10.double)
print(11.isEven)
