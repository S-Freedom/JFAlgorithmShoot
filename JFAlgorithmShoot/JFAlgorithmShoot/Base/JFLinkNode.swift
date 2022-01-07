//
//  JFLinkNode.swift
//  JFAlgorithmShoot
//
//  Created by 黄鹏飞 on 2021/6/22.
//  Copyright © 2021 黄鹏飞. All rights reserved.
//
// 单链表

import Foundation

class LinkNode <E: Equatable> {
    var value: E
    var next: LinkNode?
    
    init(_ val: E) {
        self.value = val
    }
    
    static func == (lhs: LinkNode, rhs: LinkNode) -> Bool {
        return lhs.value == rhs.value
    }
}
