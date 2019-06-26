//
//  LeetCode.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-06-19.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation


func findTheDifference(_ s: String, _ t: String) -> Character {
    var asciiS: Int = 0
    for ch in s {
        asciiS += Int(ch.asciiValue!)
    }
    
    var asciiT: Int = 0
    for ch in t {
        asciiT += Int(ch.asciiValue!)
    }
    
    let diff = asciiT - asciiS
    return Character(UnicodeScalar(diff)!)
}
// time complexity O(n)
func reverseString(_ s: inout [Character]) {
    var start = 0
    var end = s.count - 1
    while start < end {
        let temp = s[start]
        s[start] = s[end]
        s[end] = temp
        start += 1
        end -= 1
    }
}


func detectCapitalUse(_ word: String) -> Bool {
    var countCapital = 0
    let startsWithCapital = word[word.startIndex].isUppercase
    
    for ch in word {
        if ch.isUppercase{
            countCapital += 1
        }
    }
    
    if countCapital == word.count {
        return true
    }
    
    if startsWithCapital && countCapital == 1 {
        return true
    }
    
    if countCapital == 0 {
        return true
    }
    return false
}
