//
//  RemoveOutermostParentheses.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-07-11.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

class RemoveOutermostParentheses {
    func removeOuterParentheses(_ S: String) -> String {
        
        var newString: String = ""
        
        var stack = Stack<String>()
        
        for i in 0...S.count {
            if S == "(" {
                stack.push(S[i])
                if stack.count() == 1 {
                    continue
                }
                newString += S[i]
            } else {
                stack.pop()
            }
        }
        
        return newString
    }
}

func fib(_ N: Int) -> Int {
    
    var res = [Int](repeating: 0, count: N + 1)
    res[1] = 1
    res[2] = 1
    
    if N <= 2 { return res[N] }
    
    for i in 2..<N {
        res[i + 1] = res[i] + res[i - 1]
    }
    
    return res[N]
}
