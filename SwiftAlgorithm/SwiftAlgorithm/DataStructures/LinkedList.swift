//
//  LinkedList.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-06-25.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

public class Node {
    var value: String
    var next: Node?
    
    init(value: String) {
        self.value = value
    }
}

// public open: libraries, frameworks
// Internal (default)
// fileprivate : same file
// private : same scope
public class SingleLinkedList {
    
    fileprivate var head: Node? // head is nil when list is empty
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    var first: Node? {
        return head
    }
    
    public func append(value: String) {
        // 1. create a new Node with the value
        let newNode = Node(value: value)
        
        // 2. look for the last node
        if var h = head {
            while h.next != nil {
                h = h.next!
            }
            // 3. add the new node at the end
            h.next = newNode
        } else {
            head = newNode
        }
    }
    
    public func removeNode(at position: Int) {
        if head == nil { return }
        
        var h = head
        if position == 0 {
            head = h?.next
            return
        }
        
        for _ in 0..<position - 1 where h != nil {
            h = h?.next
        }
        
        if h == nil || h?.next == nil {
            return
        }
        
        let nextToNextNode = h?.next?.next
        h?.next = nextToNextNode
    }
}
