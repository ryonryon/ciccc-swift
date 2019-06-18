//
//  Recursion.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-06-17.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

func power(_ base: Int,_ exponent: Int) -> Int {
    if exponent == 0 {
        
        return 1
    }
    
    return power(base * base, exponent - 1)
}


func isPalindrome(_ word: String) -> Bool {

    if word.count <= 1 {
        return true
    }

    if let first = word.first, let last = word.last, first == last {
        let nextStart = word.index(after: word.startIndex)
        let nextEnd = word.index(before: word.endIndex)

        return isPalindrome(String(word[nextStart..<nextEnd]))
    }
    return false
}


func printBinary(_ num: Int) {
    
    if num < 0 {
        print("-", terminator: "")
        printBinary(-num)
        
        return
    }
    
    if num < 2 {
        print(num, terminator: "")
        
        return
    }
    
    printBinary(num / 2)
    print(num % 2, terminator: "")
}

func reverseLine(_ lineOfNum: Int = 0) {
    
    let contents = try! String(
        contentsOfFile: "/Users/togashiryo/ciccc_ios/11.Generics/SwiftAlgorithm/SwiftAlgorithm/Recursion/File.txt")
    
    let lines = contents.split(separator: "\n")
    
    if lineOfNum <= lines.count - 1 {
        
        print(lines[lines.count - lineOfNum - 1])
        reverseLine(lineOfNum + 1)
    }
}
