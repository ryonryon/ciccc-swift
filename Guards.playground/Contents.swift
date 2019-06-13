import UIKit

// Optional
// * Unwrap
// - if-let statement
// - force unwrap !
// - optional chaining (view?.prop)
// - using guard statement ( function )


func fullName(firstName: String, middleName: String?, lastName: String?) -> String {
  var fullName = firstName
  guard let middle = middleName else { return fullName }
  fullName += middle
  guard let last = lastName else { return fullName + middle }
  return fullName + last
}

fullName(firstName: "David", middleName: nil, lastName: "Smith")

func fetchData(url: String,
               completion: (String, String?, Error?) -> ()) {
  // send a request
  // done
  completion("", "", nil)
}



fetchData(url: "google.ca/some.json") { (res, data, err) in
  if let err = err {
    print(err)
    return
  }
  
  guard let data = data else { return }
  print(data)
}
