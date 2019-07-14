//
//  GraphRepresentation.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-06-27.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

// Adjacency Matrix

func adjacencyMatrixWeight() {
    
    let firstline = readLine()!
        .split(separator: " ")
        .map{ Int(String($0))! }
    
    let n = firstline[0]
    let m = firstline[1]
    
    // [0, 0, 0, ..., 0] n times of 0
    var matrix = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    
    for _ in 0..<m {
        let edge = readLine()!.split(separator: " ")
        let u = Int(edge[0])! - 1
        let v = Int(edge[1])! - 1
        let w = Int(edge[2])!
        matrix[u][v] = w
        matrix[v][u] = w
    }
    
    for row in matrix {
        print(row)
    }
}

func adjacencyListWithoutWeight() {
    let firstLine = readLine()!.split(separator: " ")
    let n = Int(firstLine[0])!
    let m = Int(firstLine[1])!
    
    var adjList = [[(Int, Int)]](repeating: [], count: n + 1)
    for _ in 0..<m {
        
        let edge = readLine()!.split(separator: " ")
        
        let u = Int(edge[0])!
        let v = Int(edge[1])!
        let w = Int(edge[2])!
        
        adjList[u].append((v, w))
        adjList[v].append((u, w))
    }
    print(adjList)
}
