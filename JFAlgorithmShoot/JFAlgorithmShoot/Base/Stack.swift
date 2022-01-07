//
//  Stack.swift
//  JFAlgorithmShoot
//
//  Created by 黄鹏飞 on 2021/6/22.
//  Copyright © 2021 黄鹏飞. All rights reserved.
//

import Foundation

struct Stack<T> {
    
    var elements = [T]()
    
    var isEmpty : Bool {
        return elements.isEmpty
    }
    
    var count : Int {
        return elements.count
    }
    
    var peek : T? {
        return elements.last
    }
    
    // push 入栈
    mutating func push(element : T){
        elements.append(element)
    }
    
    // pop 出栈
    mutating func pop() -> T? {
        return isEmpty ? nil : elements.removeLast()
    }
}
