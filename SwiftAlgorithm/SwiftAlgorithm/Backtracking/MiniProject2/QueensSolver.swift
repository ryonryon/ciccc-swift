//
//  QueensSolver.swift
//  SwiftAGDS
//
//  Created by Derrick Park on 2019-03-13.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

import Foundation

/// Write a function solveQueens that accepts a Board as a parameter
/// and tries to place 8 queens on it safely.
///
/// - Your method should stop exploring if it finds a solution
/// - You are allowed to change the function header (args or return type)
/// - Your total recursive calls should not exceed 120 times.

//var count = 0
func solveQueens(board: inout Board, row: Int = 0, col: Int = 0, queenCount: inout Int) {
    //    count += 1

    if board.isSafe(row: row, col: col) {
        board.place(row: row, col: col)
        queenCount += 1
        
        if queenCount == 8 {
            print(board.description)
        }
    }
    solveQueens(board: &board, queenCount: &queenCount)
    
    
    for i in 0...8 {
        for j in 0...8 {
            
            if (board.isSafe(row: i, col: j)) {
                
                board.place(row: i, col: j)
                
                queenCount += 1
                break
            }
            
            if (queenCount == 8) {
                
                print(board.description)
                
                board.remove(row: i, col: j)
                queenCount -= 1
                break
                
            } else {
                
                solveQueens(board: &board, row: i, col: j, queenCount: &queenCount)
            }
        }
    }
}

