//
//  Stack.swift
//  DataStructuresStack
//
//  Created by Arash Zahoory on 3/6/22.
//

import Foundation
import SwiftUI

struct Stack<Element> {
    private var storage: [Element] = []
    
    init (_ elements: [Element]){
        storage = elements
    }
    
    mutating func push(_ element: Element){
        storage.append(element)
    }
    
    @discardableResult //in case there isn't one
    mutating func pop() -> Element? {
        storage.popLast()
    }
    
    func peek() -> Element? {
        storage.last
    }
    
    var isEmpty: Bool {
        peek() == nil
    }
}

extension Stack: ExpressibleByArrayLiteral{
    init(arrayLiteral elements: Element ...) {
        storage = elements
    }
}

extension Stack: CustomStringConvertible{
    var description: String{
        """
        --top value--
        \(storage.map{"\($0)"}.reversed().joined(separator: "\n"))
        -------------
        """
    }
}





