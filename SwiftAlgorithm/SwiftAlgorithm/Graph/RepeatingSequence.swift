//
//  RepeatingSequence.swift
//  SwiftAlgorithm
//
//  Created by Ryo Togashi on 2019-07-17.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

func powLocal(_ a: Int, _ p: Int) -> Int {
    if p == 0 { return 1 }
    var val: Int = 1
    for _ in 1...p {
        val = val * a
    }
    return val
}

func next(_ A: Int, _ p: Int) -> Int {
    var val: Int = 0
    var a = A
    while a > 0 {
        let b = a % 10
        a = Int(floor(Double(a / 10)))
        val += powLocal(b, p)
    }
    return val
    
//    return String(A)
//        .compactMap {power(Int(String($0))!, p)}
//        .reduce(0, +)
}

func RepeatingSequence(A: Int, p: Int) {
    var a = A
    var rList: [Int] = []
    var check: [Bool] = []
    rList.append(a)
    check.append(false)
    while true {
        let nextValue = next(a, p)
        
        var isInLoop = false
        
        for i in 0..<rList.count {
            if rList[i] == nextValue {
                
                if check[i] == false {
                    check[i] = true
                } else if check[i] == true {
                    isInLoop = true
                }
            }
        }
        rList.append(nextValue)
        check.append(false)
        a = nextValue
        if isInLoop {
            break
        }
    }
    var falseCount = 0
    print("\(rList)")
    print("\(check)")
    for j in 0..<rList.count {
        if check[j] == true {
            break
        }
        print(rList[j])
        falseCount += 1
    }
    print("ans: \(falseCount)")
}


// データを回す
    // checkリスト内に同じ値が見つけた場合
        // check[i]がfalse の場合true に変更
        // check[i]がtrue の場合ストップしてcheckリスト内のfalseの数を出力
