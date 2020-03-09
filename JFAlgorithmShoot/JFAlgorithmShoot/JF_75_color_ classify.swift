//
//  JF_75_color_ classify.swift
//  JFAlgorithmShoot
//
//  Created by 黄鹏飞 on 2020/3/9.
//  Copyright © 2020 黄鹏飞. All rights reserved.
//

import Cocoa

//给定一个包含红色、白色和蓝色，一共 n 个元素的数组，原地对它们进行排序，使得相同颜色的元素相邻，并按照红色、白色、蓝色顺序排列。
//
//此题中，我们使用整数 0、 1 和 2 分别表示红色、白色和蓝色。
//
//注意:
//不能使用代码库中的排序函数来解决这道题。
//
//示例:
//
//输入: [2,0,2,1,1,0]
//输出: [0,0,1,1,2,2]

class JF_75_color__classify: NSObject {

//    本题通过三指针解决问题，两个指针从左向右扫描，一个指针指向最后一个元素从右向左扫描，
//    当红色指针（扫描指针）大于右侧的指针的时候，就说明已经交换完毕了，即已经排好序了
//    初始状态：绿色和红色指向第一个元素，紫色指向最后一个元素
//    遇到1，跳过，红色指针++
//    遇到0，红色跟绿色指针交换，红色++， 绿色++
//    遇到2，红色跟紫色指针交换， 紫色指针--
    func sortColors(_ nums: inout [Int]) {
        
        var g: Int = 0
        var r : Int = 0
        var p : Int = nums.count-1
        
        while r <= p {
            
            let value = nums[r]
            if value == 0 {
                swap(&nums, i: r, j: g)
                r += 1
                g += 1
            }

            if value == 1 {
                r += 1
            }

            if value == 2 {
                swap(&nums, i: r, j: p)
                p -= 1
            }
        }
    }
    
    func swap(_ nums : inout [Int], i : Int, j : Int) {
        
        (nums[i], nums[j]) = (nums[j], nums[i])
    }
}
