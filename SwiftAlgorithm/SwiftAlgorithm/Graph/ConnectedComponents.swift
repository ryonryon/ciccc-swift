//
//  ConnectedComponents.swift
//  SwiftAlgorithm
//
//  Created by Ryo Togashi on 2019-07-15.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

func connectedComponents() {
    let firstLine = readLine()!.split(separator: " ")
    let n = Int(firstLine[0])!
    let m = Int(firstLine[1])!
    
    var adjList = [[Int]](repeating: [], count: n + 1)
    for _ in 0..<m {
        let edge = readLine()!.split(separator: " ")
        let u = Int(edge[0])!
        let v = Int(edge[1])!
        adjList[u].append(v)
        adjList[v].append(u)
    }
    print("adjList: \(adjList)")
    var check: [Bool] = [Bool](repeating: false, count: n + 1)
    var count = 0
    for node in 1..<adjList.count {
        if !check[node] {
            dfs(start: node, check: &check, adjList: &adjList)
            count += 1
        }
    }
    
}
