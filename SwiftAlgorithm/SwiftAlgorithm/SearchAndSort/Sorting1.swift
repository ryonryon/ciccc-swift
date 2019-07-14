//
//  Sorting1.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-07-08.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

// - A collection + Soring order (Ascending, Descending)

// Time complexity = O(nˆ2)
// bubble sort
func bubbleSort(collection: inout [Int], ascending: Bool = true) {
    
    for _ in 0..<collection.count {
        var swapped: Bool = false
        for j in 0..<collection.count - 1 {
            
            let willSwap: Bool = ascending
                ? collection[j] > collection[j + 1]
                : collection[j] < collection[j + 1]
            
            if willSwap {
                collection.swapAt(j, j + 1)
                swapped = true
            }
        }
        if !swapped {
            break
        }
    }
}


// selection sort

func selectionSort(collection: inout [Int], ascending: Bool = true) {
    
    // swift can get minimub number
    // let minimumElement = collection.min()!
    
    for i in 0..<collection.count {
        var minOrMaxElementIndex: Int = i
        
        for j in i..<collection.count {
            
            let willSwap: Bool = ascending
                ? collection[minOrMaxElementIndex] > collection[j]
                : collection[minOrMaxElementIndex] < collection[j]
            
            if willSwap {
                minOrMaxElementIndex = j
            }
        }
        collection.swapAt(i, minOrMaxElementIndex)
    }
}

// insertion sort
// - without swapping -> shifting
// - sorted / unsorted
//    [3, 1, 5, 2, 4, 0]
// 1: [1, 3, 5, 2, 4, 0]
// 2: [1, 3, 5, 2, 4, 0]
// 3: [1, 2, 3, 5, 4, 0]
// 4: [1, 2, 3, 4, 5, 0]
// 5: [0, 1, 2, 3, 5, 4]
func insertionSort(collection: inout [Int], ascending: Bool = true) {
    for i in 1..<collection.count {
        let insert = collection[i]
        var j = i - 1
        while j >= 0 {
            
            let willSwap: Bool = ascending
                ? collection[j] > insert
                : collection[j] < insert
            
            if willSwap {
                collection[j+1] = collection[j]
                j -= 1
            } else {
                break
            }
        }
        collection[j+1] = insert
    }
}
