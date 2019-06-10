//: [Previous](@previous)
//: ### Enums within Enums
//: - Callout(Exercise):
//: Define an enum called `SConfig` representing the different configurations for the 2017 Tesla Model S vehicle. Use a raw type (Double) to represent its starting price in USD. The following image contains the possible configurations:
//:
//: ![model-s](/modelS.png)
//:
enum SConfig: Double {
    case sixty = 68_000, sixtyD = 73_00
    case seventyFive = 69_500, seventyFiveD = 74_500
    case ninetyD = 87_500
    case oneHandredD = 94_000, pOneHandredD = 135_000
}
//: - Callout(Exercise):
//: Define an enum called `XConfig` representing the different configurations for the 2017 Tesla Model X vehicle. Use a raw type (Double) to represent its starting price in USD. The following image contains the possible configurations:
//:
//: ![model-s](/modelX.png)
//:
enum XConfig: Double {
    case sixty = 68_000, sixtyD = 73_00
    case seventyFive = 69_500, seventyFiveD = 74_500
    case ninetyD = 87_500
    case oneHandredD = 94_000, pOneHandredD = 135_000
}
//: - Callout(Exercise):
//: Define an enum called `ThreeType` representing the different types for the 2017 Tesla 3 vehicle. Use a raw type (Double) to represent its starting price in USD. The following image contains the possible types:
//:
//: ![model-s](/model3.png)
//:
enum ThreeType: Double {
    case standard = 35_000, longRange = 44_000
}
//: - Callout(Exercise):
//: Define an enum called `Tesla2017` representing Tesla's cars for 2017 — the Model S, Model X, and Model 3. Each case (car) should have an associated value for the different configuration or type for that model. Create a constant called `newCar` that is a Standard Tesla 2017 Model 3.
//:
enum Tesla2017 {
    case modelS(SConfig: SConfig)
    case modelX(SConfig: XConfig)
    case model3(Sconfig: ThreeType)
}

let newCar = Tesla2017 = .modelX(config: .pOneHundredD)
//: - Callout(Exercise):
//: Use a switch statement to extract and print the starting the value for `newCar`. The switch statement should be able to handle any type of Tesla 2017 model.
//:
switch newCar {
case .modelS(let config):
    print(config.rawValue)
case .modelX(let config):
    print(config.rawValue)
case .model3(let config):
    print(config.rawValue)
}
