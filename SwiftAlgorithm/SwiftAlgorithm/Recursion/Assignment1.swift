//
//  Assignment1.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-06-17.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation


func getOperatorIndex(_ str: String) -> Int {
    var operataionIndex: Int = 0

    var stack = Stack<String>()

    for i in 0..<str.count {
        if str[str.index(str.startIndex, offsetBy: i)] == "(" {
            stack.push("(")
        }
        if str[str.index(str.startIndex, offsetBy: i)] == ")" {
            stack.pop()
        }
        if str[str.index(str.startIndex, offsetBy: i)] == "+"
            || str[str.index(str.startIndex, offsetBy: i)] == "*" {
            
            if stack.array.count == 1 {
                operataionIndex = i
            }
        }

    }

    return operataionIndex
}

func evaluate(_ str: String) -> Int {
    
    let noBlankStr = str.replacingOccurrences(of: " ", with: "")
    
    if noBlankStr.prefix(1) != "(" {
        return Int(str)!
    }
    
    // get operator
    let operatorIndex: Int = getOperatorIndex(noBlankStr)

    // get left
    let leftAfterParenthIndex = noBlankStr.index(noBlankStr.startIndex, offsetBy: 1)
    let leftBeforeOperatorIndex = noBlankStr.index(noBlankStr.startIndex, offsetBy: operatorIndex)
    
    let left = noBlankStr.prefix(1) == "("
        ? evaluate(String(noBlankStr[leftAfterParenthIndex..<leftBeforeOperatorIndex]))// TODO after ( to before operator
        : Int(noBlankStr.prefix(1))!

    // get right
    let rightAfterOperatorIndex = noBlankStr.index(noBlankStr.startIndex, offsetBy: operatorIndex + 1)
    let rightAfterOperatorIndexPlusOne = noBlankStr.index(noBlankStr.startIndex, offsetBy: operatorIndex + 2)
    let rightBeforeLastParenthIndex = noBlankStr.index(noBlankStr.startIndex, offsetBy: noBlankStr.count - 1)
    
    let right = String(noBlankStr[rightAfterOperatorIndex..<rightAfterOperatorIndexPlusOne]) == "("// TODO after operator
        ? evaluate(String(noBlankStr[rightAfterOperatorIndex..<rightBeforeLastParenthIndex]))// TODO after operator to before last )
        : Int(String(noBlankStr[rightAfterOperatorIndex..<rightAfterOperatorIndexPlusOne]))!// TODO after operator

    switch noBlankStr[noBlankStr.index(noBlankStr.startIndex, offsetBy: operatorIndex)] {
    case "+":
        return left + right
    default:
        return left * right
    }
}

struct Stack<T> {
    var array: [T] = []

    mutating func push(_ element: T) {
        array.append(element)
    }

    mutating func pop() -> T? {
        if !array.isEmpty {
            let index = array.count - 1
            let poppedValue = array.remove(at: index)
            return poppedValue
        } else {
            return nil
        }
    }
}
