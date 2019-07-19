//
//  FindTheTownJudge.swift
//  SwiftAlgorithm
//
//  Created by Ryo Togashi on 2019-07-15.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

class Solution {
    func findJudge(_ N: Int, _ trust: [[Int]]) -> Int {
        
        if N == 1 { return 1 }
        
        var degrees: [Int] = [Int](repeating: 0, count: N + 1)
        for var edge in trust {
            degrees[edge[0]] -= 1
            degrees[edge[1]] += 1
        }
        
        for i in degrees.indices {
            if degrees[i] == N - 1 {
                return i
            }
        }
        return -1
    }
}
