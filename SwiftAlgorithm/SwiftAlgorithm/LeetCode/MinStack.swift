//
//  MinStack.swift
//  SwiftAlgorithm
//
//  Created by 冨樫凌 on 2019-06-24.
//  Copyright © 2019 ryotogashi. All rights reserved.
//

import Foundation

class MinStack {
    
    private var arr: [Int] = []
    /** initialize your data structure here. */
    init() {
        
    }
    
    func push(_ x: Int) {
        arr.append(x)
    }
    
    func pop() {
        arr.removeLast()
    }
    
    func top() -> Int {
        return arr.first!
    }
    
    func getMin() -> Int {
        var tempMin: Int = arr[0]
        for i in arr {
            if tempMin > i {
                tempMin = i
            }
        }
        return tempMin
    }
}

/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(x)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */
/**
 * Your MinStack object will be instantiated and called as such:
 * MinStack* obj = new MinStack();
 * obj->push(x);
 * obj->pop();
 * int param_3 = obj->top();
 * int param_4 = obj->getMin();
 */
