//
//  dfs.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-07-12.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation


func dfs(start: Int, check: inout [Bool], adjList: inout [[Int]]) {
    check[start] = true
    for next in adjList[start] {
        if check[next] == false {
            dfs(start: next, check: &check, adjList: &adjList)
        }
    }
}

func storeInAdjacencyList() {
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
    dfs(start: 1, check: &check, adjList: &adjList)
}
