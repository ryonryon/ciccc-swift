////
////  FridayExcercise.swift
////  SwiftAlgorithm
////
////  Created by 冨樫凌 on 2019-06-28.
////  Copyright © 2019 ryotogashi. All rights reserved.
////
//
//import Foundation
//
//
//func remoteController(target: Int, ButtonNumbers: [Int]){
//
//    var brokenButtons = [Bool](repeating: false, count: 10)
//    for btn in ButtonNumbers {
//        brokenButtons[btn] = true
//    }
//
//    // exhaustive search
//    // 0, 1, 2, ... 500,000
//
//    var currentAnswer = abs(target - 100)
//    for c in 0...1000000 {
//        let len = numOfPresses(ch: c, broken: &brokenButtons)
//        if len > 0 {
//            let plusMinusPresses = abs(c - target)
//            if len + plusMinusPresses < currentAnswer {
//                currentAnswer = len + plusMinusPresses
//            }
//        }
//    }
//}
//
//func numOfPresses(ch: Int, broken: inout [Bool]) -> Int {
//    var ch = ch
//    if ch == 0 {
//        return broken[0] ? 0 : 1
//    }
//    var count = 0
//    while ch > 0 {
//        if broken[ch % 10] {
//            return 0
//        }
//        count += 1
//        ch /= 10
//    }
//    return count
//}
//
//func lottoHelper (set: inout [Int], choices: inout [Int]) {
//
//}
//
//
//func lotto() {
//    while true {
//        let input = readLine()!
//        if input == "0" { break }
//        var numSet = Array<Int>(input.split(separator: " ").map { Int(String($0))! })[1...]
//        var choices = [Int]()
//        lottoHelper(set: &numSet, choices: &choices)
//        print()
//    }
//}
