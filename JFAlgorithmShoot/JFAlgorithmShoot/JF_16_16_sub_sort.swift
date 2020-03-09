//
//  JF_16_16_part_sort.swift
//  JFAlgorithmShoot
//
//  Created by 黄鹏飞 on 2020/3/9.
//  Copyright © 2020 黄鹏飞. All rights reserved.
//

import Cocoa

class JF_16_16_sub_sort: NSObject {

//    给定一个整数数组，编写一个函数，找出索引m和n，只要将索引区间[m,n]的元素排好序，整个数组就是有序的。注意：n-m尽量最小，也就是说，找出符合条件的最短序列。函数返回值为[m,n]，若不存在这样的m和n（例如整个数组是有序的），请返回[-1,-1]。
//
//    示例：
//    输入： [19,2,4,7,10,11,7,12,6,7,16,18,19]
//    输出： [3,9]
    func subSort(_ array: [Int]) -> [Int] {

        if array.count == 0 {
            return [-1, -1]
        }
        // 从左到右寻找逆序对
        // 由于是从左到右升序排列，所以找出从左到右最大值，并记录max右侧比他小的索引
        var max = array[0]
        var lIdx = 0
        for i in 1..<array.count {
            let v = array[i]
            if max > v {
                // 记录索引
                lIdx = i
            }else {
                // 更新max值
                max = v
            }
        }
        
        if lIdx == 0 {
            return [-1,-1]
        }
        
        // 从右往左寻找逆序对
        // 从右往左寻找和从左向右相反
        var min = array[array.count - 1]
        var rIdx = array.count - 1
//        [19,2,4,7,10,11,7,12,6,7,16,18,19]
        
        for i in (0..<array.count-1).reversed() {
            let v = array[i]
            if min < v {
                // 记录索引
                rIdx = i
            }else {
                // 更新min值
                min = v
            }
            print(rIdx)
        }
        
        // 两个逆序对之间的值就是结果
        return [rIdx, lIdx]
    }
}
