//
//  DesignLinkedList.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-06-25.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

class MyLinkedList {
    
    fileprivate var head: LeetNode?
    
    /** Initialize your data structure here. */
    init(head: LeetNode) {
        self.head = head
    }
    
    /** Get the value of the index-th node in the linked list. If the index is invalid, return -1. */
    func get(_ index: Int) -> Int {
        if var h = head {
            var i = 0
            while h.next != nil {
                if i == index {
                    return h.value
                }
                h = h.next!
                i += 1
            }
        }
        return -1
    }
    
    /** Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list. */
    func addAtHead(_ val: Int) {
        let newLeetNode = LeetNode(value: val)
        
        if head == nil {
            head = newLeetNode
        } else {
            let tempNode = head!
            head = newLeetNode
            tempNode.prev = newLeetNode
            newLeetNode.next = tempNode
        }
        
    }
    
    /** Append a node of value val to the last element of the linked list. */
    func addAtTail(_ val: Int) {
        let newLeetNode = LeetNode(value: val)
        
        if var h = head {
            while h.next != nil {
                h = h.next!
            }
            h.next = newLeetNode
            newLeetNode.prev = h
        } else {
            head = newLeetNode
        }
        
    }
    
    /** Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted. */
    func addAtIndex(_ index: Int, _ val: Int) {
        
        let newLeetNode = LeetNode(value: val)
        
        if var h = head {
            var i = 0
            while h.next != nil {
                if i == index {
                    h.prev!.next = newLeetNode
                    newLeetNode.next = h
                    h.prev = newLeetNode
                    h.next!.prev = newLeetNode.next
                }
                
                h = h.next!
                i += 1
            }
        }
        
    }
    
    /** Delete the index-th node in the linked list, if the index is valid. */
    func deleteAtIndex(_ index: Int) {
        var i = 0
        
        if var h = head {
            while h.next != nil {
                if i == index {
                    h.prev!.next = h.next!
                    h.next!.prev = h.prev!
                }
                
                h = h.next!
                i += 1
            }
        }
    }
}

class LeetNode {
    var value: Int
    var next: LeetNode?
    var prev: LeetNode?
    
    init(value: Int) {
        self.value = value
    }
}

/**
 * Your MyLinkedList object will be instantiated and called as such:
 * let obj = MyLinkedList()
 * let ret_1: Int = obj.get(index)
 * obj.addAtHead(val)
 * obj.addAtTail(val)
 * obj.addAtIndex(index, val)
 * obj.deleteAtIndex(index)
 */
