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
        print(list)
    } else {
        var _list = list
        
        for i in 1...6 {
            _list.append(i)
            rollDice(num - 1, _list)
            _list.removeLast()
        }
    }
}
