//
//  TreeRepresentationTest.swift
//  SwiftAlgorithm
//
//  Created by Ryo Togashi on 2019-07-18.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

func treeRepresentationTest() {
    
    let rootNode = BinaryNode<Int>(value: 1)
    let node1 = BinaryNode<Int>(value: 4)
    let node2 = BinaryNode<Int>(value: 5)
    let node3 = BinaryNode<Int>(value: 2)
    let node4 = BinaryNode<Int>(value: 6)
    let node5 = BinaryNode<Int>(value: 3)
    
    rootNode.leftChild = node1
    rootNode.rightChild = node2
    node1.leftChild = node3
    node2.leftChild = node4
    node2.rightChild = node5

}
