//: [Previous](@previous)
//: ### Describe Custom Errors
//: The following exercises will use the `GrammarError` enum and `throwGrammarError` function.
//:
import Foundation

enum GrammarError: Error {
  case passiveVoice(String)
  case improperTense(String)
}

func throwGrammarError() throws {
    throw GrammarError.passiveVoice("The test was taken by the student.")
}

//: - Callout(Exercise):
//: Extend `GrammarError` such that it implements the `LocalizedError` protocol. (Optional) Provide creative values for all `LocalizedError` properties.
//:
extension GrammarError: LocalizedError {
  var errorDescription: String? {
    switch self {
    case .passiveVoice:
      return "Passvie voice is used. It is unclear who is doing what."
    case .improperTense:
      return "The subject and verb tenses do not agree."
    }
  }
  
  var failureReason: String? {
    switch self {
    case .passiveVoice:
      return "The subject of the sentense does not perform the verb."
    case .improperTense:
      return "The subject and verb tenses do not agree."
    }
  }
  
  var recoverySuggestion: String? {
    switch self {
    case .passiveVoice:
      return "Modify the sentense so the subject performs the verb."
    case .improperTense:
      return "If the subject is singular, use a single verb. If the subject is plural, use a plural verb."
    }
  }
  
}
//: - Callout(Exercise):
//: Extend `GrammarError` such that it implements the `CustomNSError` protocol. (Optional) Provide creative values for all `CustomNSError` properties.
//:
extension GrammarError: CustomNSError {
  public static var errorDomain: String {
    return "GrammarCheck"
  }
 
  var errorCode: Int {
    switch self {
    case .passiveVoice:
      return 0
    case .improperTense:
      return 1
    }
  }
  
  var errorUserInfo: [String : Any] {
    switch self {
    case .passiveVoice(let msg), .improperTense(let msg):
      return [
        "lengthOfMessage": msg.count
      ]
    }
  }
}
//: - Callout(Exercise):
//: Call `throwGrammarError` casting any thrown error into an `NSError`. Then, print the error's localized description and the values of all its `NSError` properties.
//:
do {
  try throwGrammarError()
} catch let err as NSError {
  print(err.localizedDescription)
  print(err.domain)
  print(err.code)
  print(err.userInfo)
}

//: [Next](@next)
