//
////
////  FridayExercise.swift
////  SwiftAlgorithm
////
////  Created by 冨樫凌 on 2019-06-20.
////  Copyright © 2019 ryotogashi. All rights reserved.
////
////
//import Foundation
//
//func getMinimumPress(targetNumber: Int, brokenButtonNum: Int, brokenButton: [Int]) -> Int {
//
//    // get press count from nearest available number
//    let nearestNumber = 0
//    let pressCountNearest = targetNumber > nearestNumber
//        ? targetNumber - nearestNumber
//        : nearestNumber - targetNumber
//
//    // compare most nearest number to target (minimum number, maximum number, 100)
//    let currentPosition: Int = 100
//    let pressCountHandred = targetNumber > currentPosition
//        ? targetNumber - currentPosition
//        : currentPosition - targetNumber
//
//    // compare nearest or use current position
//    return pressCountNearest < pressCountHandred ? pressCountNearest : pressCountHandred
//}
//
//func getNearestNumber(availableNumerList: [Int], targetNumberArray: [Int]) -> Int {
//
//    // ターゲットナンバー同じ桁数のナンバーの全検索をする
////    let allAvailableNumber =
//
//    // ターゲットナンバー＋１桁の最小数を作成
//    let targetNumberPlus1Digit = Double(availableNumerList[0]) * pow(Double(10), Double(targetNumberArray.count))
//
//    // ターゲットナンバーー１桁の最大数を作成
//
//    return 0
//}
//
////5457
////3
////6 7 8
//
