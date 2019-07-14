//
//  Sorting2.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-07-08.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

// merge sort
// Divide: O(log n) - half
// Conquer: O(n)    - merge
// ** Time Complexity: O(nlogn)
// ** Space Complexity: O(n)
func mergeSort(collection: [Int], ascending: Bool = true) -> [Int] {
    
    // base case
    if collection.count <= 1 {
        return collection
    }
    
    // recursive case
    let mid = collection.count / 2
    let left = mergeSort(collection: Array(collection[..<mid]), ascending: ascending)
    let right = mergeSort(collection: Array(collection[mid...]), ascending: ascending)
    
    return merge(left, right, ascending: ascending)
}

func merge(_ left: [Int], _ right: [Int], ascending: Bool) -> [Int] {
    var i = 0, j = 0
    var merged: [Int] = []
    
    while i < left.count && j < right.count {
        
        let willAppend: Bool = ascending
            ? left[i] < right[j]
            : left[i] > right[j]
        
        if willAppend {
            merged.append(left[i])
            i += 1
        } else {
            merged.append(right[j])
            j += 1
        }
    }
    if i == left.count {
        merged += right[j...]
    } else {
        merged += left[i...]
    }
    
    return merged
}
