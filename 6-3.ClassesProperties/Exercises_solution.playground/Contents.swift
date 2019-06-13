//: ## Lesson 6 Exercises - Classes, Properties and Methods

import UIKit

//: __Problem 1__
//:
//: __1a.__
//: The compiler is complaining because the class Animal has no initializers. Write an init method for the Animal class and quiet this error. Include a mechanism to initialize the length of the Animal's tail using the Tail struct provided.
struct Tail {
  let lengthInCm: Double
}

class Animal {
  var species: String = ""
  let tail: Tail
  let length: Double
  
  init(tail: Tail) {
    self.tail = tail
    self.length = tail.lengthInCm
  }
  
}
//: __1b.__
//: Instantiate and initialize a few different Animals.
let anm1 = Animal(tail: Tail(lengthInCm: 10))
let anm2 = Animal(tail: Tail(lengthInCm: 20))
let anm3 = Animal(tail: Tail(lengthInCm: 30))
//: __Problem 2__
//:
//: Below are the beginnings of the Peach class.
class Peach {
  let variety: String
  
  // Softness is rated on a scale from 1 to 5, with 5 being the softest
  var softness: Int
  
  // type property (static)
  static var varieties: [Peach] = []
  
  
  init(variety: String, softness: Int) {
    self.variety = variety
    self.softness = softness
  }
  
  func ripen() -> String {
    if softness < 5 {
      softness += 1
    }
    
    return softness == 5 ? "Ripen!" : "Not yet!"
  }
}
//: __2a.__
//: Add a type property to the Peach class called "varieties". It should hold an array of different types of peaches.
//:
//: __2b.__
//: Add an instance method called ripen() that increases the value of the stored property, softness, and returns a string indicating whether the peach is ripe.
//:
//: __2c.__
//: Create an instance of the Peach class and call the method ripen().
let peach = Peach(variety: "Pink", softness: 5)
peach.ripen()
//: __Problem 3__
//:
//: __3a.__
//:Add the computed property, "cuddlability", to the class, FluffyDog. Cuddlability should be computed based on the values of the stored properties, fluffiness and droolFactor.
//var theFluffiestDog = UIImage(named:"fluffyDog")!

class FluffyDog {
  // stored properties
  let name: String
  let fluffiness: Int
  let droolFactor: Int
  
  // computed property
  var cuddlability: Int {
    return fluffiness / droolFactor
  }
  
  init(name: String, fluffiness: Int, droolFactor: Int) {
    self.name = name
    self.fluffiness = fluffiness
    self.droolFactor = droolFactor
  }
  
  func chase(_ wheeledVehicle: String)-> String {
    return "Where are you going, \(wheeledVehicle)? Wait for me! No, don't go! I will catch you!"
  }
}
//: __3b.__
//: Instantiate and initialize an instance of the class, FluffyDog. Use it to call the method, chase().
let fluffyDog = FluffyDog(name: "Dan", fluffiness: 10, droolFactor: 5)
fluffyDog.chase("Chevy")
//: __Problem 4__
//:
//: __4a.__
//: Write an instance method, bark(), that returns a different string based on the value of the stored property, size.
enum Size: Int {
  case small
  case medium
  case large
}

class ChattyDog {
  let name: String
  let breed: String
  let size: Size
  
  init(name: String, breed: String, size: Size) {
    self.name = name
    self.breed = breed
    self.size = size
  }
  
  func bark() -> String {
    switch size {
    case .small:
      return "bark"
    case .medium:
      return "bark bark"
    case .large:
      return "BARK BARK BARK"
    }
  }
  
  static func speak(_ size: Size) -> String {
    switch size {
    case .small:
      return "bark"
    case .medium:
      return "bark bark"
    case .large:
      return "BARK BARK BARK"
    }
  }
}
//: __4b.__
//: Create an instance of ChattyDog and use it to call the method, bark().
let dog1 = ChattyDog(name: "Dan", breed: "Husky", size: .large)
dog1.bark()
//: __4c.__
//: Rewrite the method, bark(), as a type method and rename it speak(). Call your type method to test it out.
ChattyDog.speak(.large)
//: __Problem 5__
//:
//:__5a.__
//: Write an initialization method for the House class below.
enum Quality {
  case poor, fair, good, excellent
}

enum NaturalDisaster {
  case earthquake
  case wildfire
  case hurricane
}

class House {
  var numberOfBedrooms: Int = 0
  var price: Int
  let location: Quality
  
  // computed property
  var worthyOfAnOffer: Bool {
    switch location {
    case .excellent:
      return (price < 700_000 * numberOfBedrooms) ? true : false
    case .good:
      return (price < 500_000 * numberOfBedrooms) ? true : false
    case .fair:
      return (price < 400_000 * numberOfBedrooms) ? true : false
    case .poor:
      return (price < 300_000 * numberOfBedrooms) ? true : false
    }
  }
  
  init(location: Quality, price: Int) {
    self.location = location
    self.price = price
  }
  
  func willStayStanding(_ naturalDisaster: NaturalDisaster)-> Bool {
    switch naturalDisaster {
    case .earthquake:
      return true
    case .wildfire:
      return true
    case .hurricane:
      return false
    }
  }
}

//: __5b.__
//: Create an instance of the House class and use it to call the method, willStayStanding().  This method takes in a parameter of type NaturalDisaster and return a Bool indicating whether the house will stay standing in a given natural disaster.
let house1 = House(location: .excellent, price: 1_000_000)
print(house1.willStayStanding(.earthquake))
//: __5c.__
//: Add a computed property called, "worthyOfAnOffer". This property should be a Bool, whose return value is dependent upon some combination of the stored properties, numberOfBedrooms and location.






