//
//  Search.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-06-19.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation


// 1. Linear Search - Time Complexity: O(n)
// - Search one by one
// arr = [1, 10, 3, 7, 9, ...]
// target = 7

func linearSearch <T: Equatable>(target: T, from array: [T]) -> Int? {
    for (index, element) in array.enumerated() {
        if element == target {
            return index
        }
    }
    return nil
}

// Binary Search - Time Complexity: O(log n)
// IMPORTANT PRE-CONDITION: Elements must be sorted
func binarySearch(target: Int, from array: [Int]) -> Int {
    var lower = 0
    var upper = array.count - 1
    
    while lower <= upper {
        let mid = (lower + upper) / 2
        if array[mid] == target {
            return mid
        } else if array[mid] < target {
            lower = mid + 1
        } else {
            upper = mid - 1
        }
    }
    return -1
}
