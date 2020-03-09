//
//  main.swift
//  JFAlgorithmShoot
//
//  Created by 黄鹏飞 on 2020/3/9.
//  Copyright © 2020 黄鹏飞. All rights reserved.
//

import Foundation

print("Hello, World!")

var _88_mergeTwoArray : JF_88_mergeTwoArray = JF_88_mergeTwoArray()

//var nums1 = [1,0]
//_88_mergeTwoArray.merge(&nums1, 1, [2], 1)
//print(nums1)

//var _75_color_classify = JF_75_color__classify()
//var nums_75 = [2,0,1]//[2,2,0,0,1,1,1,2,0,2,0,0,1]
//_75_color_classify.sortColors(&nums_75)
//print(nums_75)

var _16_16_sub_sort = JF_16_16_sub_sort()
let _16_16_result : [Int] = _16_16_sub_sort.subSort([19,2,4,7,10,11,7,12,6,7,16,18,19])
print("\(_16_16_result)")
