//
//  WhosMyParent.swift
//  SwiftAlgorithm
//
//  Created by Ryo Togashi on 2019-07-24.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

func whosMyParent() {
    let n = Int(readLine()!)!
    var adjList = [[Int]](repeating: [], count: n + 1)
    var depth = [Int](repeating: 0, count: n + 1)
    var check = [Bool](repeating: false, count: n + 1)
    
    var parent = [Int](repeating: 0, count: n + 1)
    
    for _ in 0..<n-1 {
        let edge = readLine()!.split(separator: " ")
        let u = Int(edge[0])!
        let v = Int(edge[1])!
        
        adjList[u].append(v)
        adjList[v].append(u)
    }
    
    depth[1] = 0
    check[1] = true
    
    var q = QueueArray<Int>()
    q.enqueue(1)
    parent[1] = 0
    
    while !q.isEmpty {
        let x = q.dequeue()!
        for node in adjList[x] {
            if !check[node] {
                depth[node] = depth[x] + 1
                check[node] = true
                parent[node] = x
                q.enqueue(node)
            }
        }
    }
    
    for i in 2...n {
        print(parent[i])
    }
}
