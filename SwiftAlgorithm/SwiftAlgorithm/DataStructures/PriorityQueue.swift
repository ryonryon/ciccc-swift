//
//  PriorityQueue.swift
//  SwiftAlgorithm
//
//  Created by Ryo Togashi on 2019-07-23.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

struct PriorityQueue<E: Comparable> {
    private var elements: Heap<E>

    init(order: @escaping (E, E) -> Bool) {
        self.elements = Heap<E>(order: order)
    }
    
    var isEmpth: Bool {
        return self.elements.isEmpty
    }
    
    var count: Int {
        return self.elements.count
    }
    
    func peek() -> E? {
        return self.elements.peek()
    }
    
    mutating func enqueue(_ element: E) {
        self.elements.insert(element)
    }
    
    mutating func dequeue() -> E? {
        return self.elements.extractFirst()
    }
    
    mutating func updateKey(at index: Int, with value: E) {
        
    }
}
