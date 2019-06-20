//
//  ShowFileStructure.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-06-18.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

// Print all possible binary representations
// printBinary(digits: 2)
// - 00
// - 01
// - 10
// - 11
func printBinary(digits: Int, prefix: String = "") {
    
    if digits == 0 {
        print(prefix)
    } else {
        
        printBinary(digits: digits - 1, prefix: prefix + "0")
        printBinary(digits: digits - 1, prefix: prefix + "1")
        //        printBinary(digits: digits - 1, prefix: prefix + "2")
    }
}
func printDecimal(decimal: Int, prefix: String = "") {
    
    if decimal == 0 {
        print(prefix)
    } else {
        
        for i in 0...9 {
            printDecimal(decimal: decimal - 1, prefix: prefix + String(i))
        }
    }
}

func permutaion(_ word: String, soFar: String = "") {
    
    if word.count == 0 {
        print(soFar)
    } else {
        
        for i in 0..<word.count {
            let ch = word[i]
            permutaion(word[0, i] + word[(i + 1), word.count], soFar: soFar + ch)
        }
    }
}
