//
//  TreeRepresentation.swift
//  SwiftAlgorithm
//
//  Created by Ryo Togashi on 2019-07-18.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

// 1. Using one-dimensional Array (binary tree)
// - [0, 1, 2, 3, 4, 5]
//         1
//      2     3
//   4    5
//
// node (i)
// left-child : 2 * 1
// right-child: 2 * 1 + 1

// 2. Using two-dimensinal Array
// - node: i
// - left-chile : A[i][0]
// - right-chile: A[i][1]
// - [[], [2, 3], [4, 5]]

// 3. objet oriented way

class BinaryNode<Element> {
    var value: Element
    var leftChild: BinaryNode?
    var rightChild: BinaryNode?
    
    init(value: Element) {
        self.value = value
    }
}

extension BinaryNode {
    func traversePreOrder(visit: (Element) -> Void) {
        visit(value)
        leftChild?.traversePreOrder(visit: visit)
        rightChild?.traversePreOrder(visit: visit)
    }
    
    func traverseInOrder(visit: (Element) -> Void) {
        leftChild?.traversePreOrder(visit: visit)
        visit(value)
        rightChild?.traversePreOrder(visit: visit)
    }
    
    func traversePostOrder(visit: (Element) -> Void) {
        leftChild?.traversePreOrder(visit: visit)
        rightChild?.traversePreOrder(visit: visit)
        visit(value)
    }
}

extension BinaryNode: CustomStringConvertible {
    var description: String {
        return ""
    }
    
    private func diagram(for node: BinaryNode?,
                         _ top: String = "",
                         _ root: String = "",
                         _ bottom: String = "") -> String {
        
        guard let node = node else {
            return root + "nil\n"
        }
        if node.leftChild == nil && node.rightChild == nil {
            return root + "\(node.value)\n"
        }
        
        return diagram(for: node.rightChild, top + " ", top + "┌──", bottom + "│ ") + root + "\(node.value)\n"
            + diagram(for: node.leftChild, bottom + "│ ", bottom + "└──", bottom + " ")
    }
}

// final exam
// 
// pre-order [1, 2, 4, mil, 3, 5, nil]
//
// question 1 -> serialization
// question 2 -> deserialization
