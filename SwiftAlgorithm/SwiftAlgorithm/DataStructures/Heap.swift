//
//  Heap.swift
//  SwiftAlgorithm
//
//  Created by Ryo Togashi on 2019-07-22.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

struct Heap<E: Comparable> {
    
    private var nodes = [E]()
    
    private var order: (E, E) -> Bool
    
    var isEmpty: Bool {
        return nodes.isEmpty
    }
    
    var count: Int {
        return nodes.count
    }
    
    init(order: @escaping (E, E) -> Bool) {
        self.order = order
    }
    
    func peek() -> E? {
        return nodes.first
    }
    
    /// Insert a new element into the heap.
    /// Time Complexity: O(log n)
    ///
    /// - Parameter value: new value.
    mutating func insert(_ value: E) {
        nodes.append(value)
        print(nodes)
        bubbleUp(nodes.count - 1)
    }
    
    /// Bubble up the new node to heapify the heap.
    /// Time Complexity: O(log n)
    ///
    /// - Parameter index: the index of the element.
    mutating private func bubbleUp(_ index: Int) {
        var index = index
        var parentIndex = parent(of: index)
        while parentIndex >= 0 && order(nodes[index], nodes[parentIndex]) {
            nodes.swapAt(parentIndex, index)
            index = parentIndex
            parentIndex = parent(of: index)
        }
    }
    
    /// Extracts the first element from the heap.
    ///
    /// - Returns: Min element or Max element from the heap.
    mutating func extractFirst() -> E? {
        let maxNode = nodes.first
        nodes.swapAt(0, nodes.count - 1)
        nodes.remove(at: nodes.count - 1)
        heapify(from: 0, until: count)
        return maxNode
    }
    
    /// Heapify the current nodes to keep the heap property from index i to j.
    /// Time Complexity: O(log n)
    ///
    /// - Parameters:
    ///   - i: starting index of the node to heapify.
    ///   - j: ending index of the node to heapify
    mutating private func heapify(from i: Int, until j: Int) {
        let l = left(of: i)
        let r = right(of: i)
        var current = i
        if l < j && order(nodes[l], nodes[current]) {
            current = l
        }
        if r < j && order(nodes[r], nodes[current]) {
            current = r
        }
        if current != i {
            nodes.swapAt(i, current)
            heapify(from: current, until: j)
        }
    }
    
    mutating func replace(at index: Int, with value: E) {
        guard index < count else { return }
        nodes.remove(at: index)
        insert(value)
    }
}

extension Heap: CustomStringConvertible {
    var description: String {
        return nodes.description
    }
    
    @inline(__always)
    private func parent(of i: Int) -> Int {
        return (i - 1) / 2
    }
    
    @inline(__always)
    private func left(of i: Int) -> Int {
        return 2 * i + 1
    }
    
    @inline(__always)
    private func right(of i: Int) -> Int {
        return 2 * i + 2
    }
}

extension Heap {
    
    mutating func buildHeap(_ arr: [E]) {
        self.nodes = arr
        for i in stride(from: self.nodes.count / 2 - 1, through: 0, by: -1) {
            heapify(from: i, until: self.nodes.count)
        }
    }
    
    mutating func heapSort() {
        for i in 1..<count {
            nodes.swapAt(count - i, 0)
            heapify(from: 0, until: count - i)
        }
    }
}
