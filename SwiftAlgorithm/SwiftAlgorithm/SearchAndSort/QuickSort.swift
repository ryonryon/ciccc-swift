//
//  QuickSort.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-07-08.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

// QuickSort
// Time Complexity: O(nlogn),    O(nˆ2) - worst case
// Space Complexity: O(1), - "in-place"
// [1, 5, 76, 3, 356, 386, 3573, 7 , 73, 75373]
// [5, 7, 2, 8, 10, 5, 3, 4]

func quickSortHelper(collection: inout [Int], _ low: Int, _ high: Int, ascending: Bool = true) {
    
    if high - low <= 0 { return }
    
    var i = low
    var j = high
    
    let pivot = collection[low]
//    print("-----------------------------------")
//    print("high: \(high), low: \(low)")
//    print("pivot: \(pivot) index: \(low)")
    
    while true {
        while pivot > collection[i] && i < j { i += 1 }
        
        while collection[j] > pivot && i < j { j -= 1 }
        
        if i >= j { break }
        
        collection.swapAt(i, j)
//        print("swap: i \(collection[i]), j \(collection[j])")
//        print(collection)
        
        if i + 1 == j { break }
        i += 1
        j -= 1
    }
    
    quickSortHelper(collection: &collection, low, i)
    quickSortHelper(collection: &collection, i + 1, high)
}


func quickSort(collection: inout [Int], ascending: Bool = true) {
    
    quickSortHelper(collection: &collection, 0, collection.count - 1, ascending: ascending)
}
