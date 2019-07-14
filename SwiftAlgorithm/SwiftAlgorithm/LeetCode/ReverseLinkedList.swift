//
//  ReverseLinkedList.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-06-27.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
}


func reverseLinkedList(_ head: ListNode?) -> ListNode? {
    var prev: ListNode? = nil
    var current: ListNode? = head
    while current != nil {
        let nextNode = current?.next
        current?.next = prev
        prev = current
        current = nextNode
    }
    return prev
}
