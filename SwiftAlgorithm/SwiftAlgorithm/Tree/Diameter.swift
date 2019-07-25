//
//  Diameter.swift
//  SwiftAlgorithm
//
//  Created by Ryo Togashi on 2019-07-24.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

struct Edge {
    let to: Int
    let weight: Int
}

func bfsDiameter(
    start: Int,
    check: inout [Bool],
    dist: inout [Int],
    adjList: inout [[Edge]]){
    
    var q = QueueArray<Int>()
    check[start] = true
    q.enqueue(start)
    while !q.isEmpty {
        let x = q.dequeue()!
        for edge in adjList[x] {
            if check[edge.to] == false {
                dist[edge.to] = dist[x] + edge.weight
                q.enqueue(edge.to)
                check[edge.to] = true
            }
        }
    }
}


func diameter() {
    let n = Int(readLine()!)!
    var adjList = [[Edge]](repeating: [], count: n + 1)
    var check = [Bool](repeating: false, count: n + 1)
    var distance = [Int](repeating: 0, count: n + 1)
    
    for _ in 1...n {
        let line = readLine()!.split(separator: " ").map { Int($0)! }
        let node = line[0]
        var j = 1
        
        while j < line.count - 2 {
            let next = line[j]
            let dist = line[j + 1]
            adjList[node].append(Edge(to: next, weight: dist))
            if line[j + 2] == -1 {
                break
            }
            j += 2
        }
    }
    
    bfsDiameter(start: 1, check: &check, dist: &distance, adjList: &adjList)
    
    var start = 1
    
    for i in 2...n {
        if distance[i] > distance[start] {
            start = i
        }
    }
    
    var check2 = [Bool](repeating: false, count: n + 1)
    var distance2 = [Int](repeating: 0, count: n + 1)
    bfsDiameter(start: start, check: &check2, dist: &distance2, adjList: &adjList)
    print(distance2.max()!)
}
