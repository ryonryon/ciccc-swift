//
//  bfs.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-07-12.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

func bfs(start: Int, check: inout [Bool], adjList: [[Int]]) {
    var queue = QueueArray<Int>()
    check[start] = true
    queue.enqueue(start)
    while !queue.isEmpty {
        let first = queue.dequeue()!
        print(first)
        for next in adjList[start] {
            if check[next] == false {
                check[next] = true
                queue.enqueue(next)
            }
        }
    }
}


func storeInAdjacencyListBFS() {
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
}
