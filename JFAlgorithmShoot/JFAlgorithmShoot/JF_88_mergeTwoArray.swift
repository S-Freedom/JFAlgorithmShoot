//
//  JF_88_mergeTwoArray.swift
//  JFAlgorithmShoot
//
//  Created by 黄鹏飞 on 2020/3/9.
//  Copyright © 2020 黄鹏飞. All rights reserved.
//

import Cocoa

class JF_88_mergeTwoArray: NSObject {

    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        
//        输入:
//        nums1 = [1,2,3,0,0,0], m = 3
//        nums2 = [2,5,6],       n = 3
//        输出: [1,2,2,3,5,6]

        var i1 : Int = m-1
        var i2 : Int = n-1
        var i : Int = m+n-1
        
        while  i2 >= 0 {
            
            if i1 >= 0 && nums2[i2] < nums1[i1] {
                
                nums1[i] = nums1[i1]
                i1 -= 1
                i -= 1
            }else {
                
                nums1[i] = nums2[i2]
                i2 -= 1
                i -= 1
            }
        }
    }
}
