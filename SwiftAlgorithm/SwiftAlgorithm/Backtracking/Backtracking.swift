//
//  Backtracking.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-06-26.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation


func rollDice(_ num: Int, _ list: [Int] = []) {
    if num == 0 {
        print("\(list)")
    } else {
        var _list = list
        
        for i in 1...6 {
            _list.append(i)
            rollDice(num - 1, _list)
            _list.removeLast()
        }
    }
}


func rollDiceSumHelper(_ num: Int, _ targetSum: Int, _ soFar: Int, _ choices: inout [Int]) {
    if num == 0 {
        if soFar == targetSum {
            print("\(choices)")
        }
        
        return
    }
    
    for i in 1...6 {
        
        if soFar + i + 1 * (num - 1) <= targetSum
            && soFar + i + 6 * (num - 1) >= targetSum {
            
            choices.append(i)
            
            rollDiceSumHelper(num - 1, targetSum, soFar + i, &choices)
            
            choices.removeLast()
        }
    }
}

func rollDiceSum(_ num: Int, _ targetSum: Int) {
    var choices = [Int]()
    rollDiceSumHelper(num, targetSum, 0, &choices)
}
