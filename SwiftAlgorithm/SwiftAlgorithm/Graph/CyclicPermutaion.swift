//
//  CyclicPermutaion.swift
//  SwiftAlgorithm
//
//  Created by Ryo Togashi on 2019-07-16.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation


func CyclicPermutaionDFS(_ node: Int, _ check: inout [Bool], _ adjList: inout [Int]) {
    if check[node] { return }
    check[node] = true
    
    CyclicPermutaionDFS(adjList[node], &check, &adjList)
}

func CyclicPermutaion(testCases: [TextCase]) {
    
    for testCase in testCases {
        var adjList: [Int] = testCase.permutations
        adjList.insert(0, at: 0)
        print("adjList: \(adjList)")
        var circleCount: Int = 0
        
        var check: [Bool] = [Bool](repeating: false, count: adjList.count)
        
        for i in 1..<adjList.count - 1 {
            if check[i] == false {
                CyclicPermutaionDFS(i, &check, &adjList)
                circleCount += 1
            }
        }
        print(circleCount)
    }
}


struct TextCase {
    let size: Int
    let permutations: [Int]
    
    init(size: Int, permutations: [Int]) {
        self.size = size
        self.permutations = permutations
    }
}
