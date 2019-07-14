//
//  Stack.swift
//  Files
//
//  Created by 冨樫凌 on 2019-06-21.
//

import Foundation

struct Stack<Element: Equatable>: Equatable {
    private var storage: [Element] = []
    
    init() {}
    
    init(_ elements: [Element]) {
        self.storage = elements
    }
    
    var isEmpty: Bool {
        return storage.isEmpty
    }
    
    func peek() -> Element? {
        return storage.last
    }
    
    mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult // you don't have to use result
    mutating func pop() -> Element? {
        return storage.popLast()
    }
    
    func count() -> Int {
        return self.storage.count
    }
}

extension Stack: CustomStringConvertible {
    var description: String {
        return storage.map({(element) -> String in
            return "\(element)"
        }).joined(separator: "|")
    }
}
