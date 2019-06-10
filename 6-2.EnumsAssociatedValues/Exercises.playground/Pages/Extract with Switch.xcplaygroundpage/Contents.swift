//: [Previous](@previous)
//: ### Extract with Switch
//: The following exercises will use `AudioEffect`.
//:
enum AudioEffect {
    case rate(value: Double)
    case pitch(value: Double)
    case echo
    case reverb
}

let effect = AudioEffect.pitch(value: 0.5)
//: - Callout(Exercise):
//: Write a switch statement using the `effect` constant that extracts all possible associated values as constants. Print any extracted associated values.
//:
switch effect {
case .rate(let val):
    print(val)
case .pitch(let val):
    print(val)
case .echo:
    print("echo")
case .reverb:
    print("reverb")
}
//: - Callout(Exercise):
//: Write a switch statement using the `effect` constant that ignores associated values.
//:
switch effect {
case .rate:
    print("rate")
case .pitch:
    print("pitch")
case .echo:
    print("echo")
case .reverb:
    print("reverb")
}
//: - Callout(Exercise):
//: Write a switch statement using the `effect` constant that extracts the associated value for `.rate` or `.pitch` into a variable. Then, divide the variable by half and print the resulting value. All other cases can be ignored using the default case.
//:
switch effect {
case .rate(let val), .pitch(let val):
    print("\(val * 0.5)")
default:
    break
}
//: - Callout(Exercise):
//: Write a switch statement using the `effect` constant that prints the associated value for `.pitch` only when it is greater than 0.4. Use the `where` keyword to complete this exercise (i.e. don't use an if statement). All other cases can be ignored using the default case.
//:
switch effect {
case .pitch(let val) where val > 0.4:
    print("\(val)")
default:
    break
}
//: [Next](@next)
