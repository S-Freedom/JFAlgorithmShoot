//
//  TwoNumSum_2.swift
//  JFAlgorithmShoot
//
//  Created by 黄鹏飞 on 2021/6/22.
//  Copyright © 2021 黄鹏飞. All rights reserved.
//

import Foundation

class JF_TwoNumsSum : NSObject {
    
    
    func sumTowNums(link1: LinkNode<Int>, link2: LinkNode<Int>) -> LinkNode<Int>{
        
        //将两个链表的位数补0对齐
        var linkNode = LinkNode(0)
        var link1Temp = link1
        var link2Temp = link2
        var carry = 0 // 进位
        // 临时继续循环的链表，防止其中一个为空

        while link1Temp != nil || link2Temp != nil{
            
            if link1Temp == nil {
                
                let node = LinkNode(link2Temp.value + carry)
                carry = 0
                linkNode.next = node
                if let temp = link2Temp.next , temp != nil{
                    link2Temp = temp
                }
                
            } else if link2Temp == nil {
                
                let node = LinkNode(link1Temp.value + carry)
                carry = 0
                linkNode.next = node
                if let temp = link1Temp.next , temp != nil{
                    link1Temp = temp
                }
            } else {
                var value = link1Temp.value + link2Temp.value + carry
                if value > 9 {
                    carry = 1
                    value = value % 10
                }else {
                    carry = 0
                }
                let node = LinkNode(value)
                linkNode.next = node
//                link1Temp = link1Temp.next
//                link2Temp = link2Temp.next
            }
        }
        
        return linkNode
    }
    
    func main() {
        let linkNode11 = LinkNode(2)
        let linkNode12 = LinkNode(3)
        let linkNode13 = LinkNode(4)
        linkNode11.next = linkNode12
        linkNode12.next = linkNode13
        
        let linkNode21 = LinkNode(1)
        let linkNode22 = LinkNode(2)
        let linkNode23 = LinkNode(3)
        linkNode21.next = linkNode22
        linkNode22.next = linkNode23
        
        printLinkNode(linkNode: linkNode11)
        printLinkNode(linkNode: linkNode21)
        print("begin")
        var linkNode = sumTowNums(link1: linkNode11, link2: linkNode21)
        printLinkNode(linkNode: linkNode)
        
        
    }
    
    func printLinkNode(linkNode: LinkNode<Int>){
        
        var node = linkNode
        if node.next == nil {
            return
        }
        while node != nil {
            print("value: \(node.value)")
            if let n = node.next {
                node = n
            }else{
                break
            }
        }
    }
}
