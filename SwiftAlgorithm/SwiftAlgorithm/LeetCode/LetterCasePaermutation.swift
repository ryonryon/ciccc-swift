//
//  LetterCasePaermutation.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-06-27.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

func letterCasePermutationHelper(_ S: String, _ results: inout [String],_ soFar: String, _ position: Int) {
    if S.count == position {
        results.append(soFar)
    } else {
        
        let currentChar = Character(S[position])
        
        if !currentChar.isNumber {
            letterCasePermutationHelper(S, &results, soFar + currentChar.uppercased(), position + 1)
            letterCasePermutationHelper(S, &results, soFar + currentChar.lowercased(), position + 1)
        } else {
            letterCasePermutationHelper(S, &results, soFar + String(currentChar), position + 1)
        }
    }
}

func letterCasePermutation(_ S: String) -> [String] {
    var results = [String]()
    
    letterCasePermutationHelper(S,  &results, "", 0)
    
    return results
}
