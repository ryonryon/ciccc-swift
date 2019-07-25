//
//  HeapTest.swift
//  SwiftAlgorithm
//
//  Created by Ryo Togashi on 2019-07-22.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

func heapTest() {
    
    var myHeap = Heap<Int>(order: >)
    myHeap.buildHeap([9, 8, 7, 6, 1, 4, 2, 3, 5])
    myHeap.heapSort()
//    myHeap.insert(10)
//    myHeap.insert(5)
//    myHeap.insert(7)
//    myHeap.insert(12)
//    myHeap.insert(1)
//    myHeap.insert(11)
    
    print(myHeap)
}
