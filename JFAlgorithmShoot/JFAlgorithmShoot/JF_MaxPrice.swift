//
//  JF_MaxPrice.swift
//  JFAlgorithmShoot
//
//  Created by 黄鹏飞 on 2021/2/20.
//  Copyright © 2021 黄鹏飞. All rights reserved.
//

import Foundation


class JF_MaxPrice: NSObject {
    
    
    // 给定一个二维数组[    [1,0,2,3]
    //                   [0,2,4,5]
    //                   [1,3,6,7]
    //                  ]
//    在一个 m*n 的棋盘的每一格都放有一个礼物，每个礼物都有一定的价值（价值大于 0）。你可以从棋盘的左上角开始拿格子里的礼物，并每次向右或者向下移动一格、直到到达棋盘的右下角。给定一个棋盘及其上面的礼物的价值，请计算你最多能拿到多少价值的礼物？
    // 求出最大价值
    // 扫描第0行
    // 扫描第0列
    // 要获取最大价值，只需要获取最后一个值即可。即dp[row][col]
    // 而 dp[row][col] = gride[row-1][col] + gride[row][col-1]所得到的值
    // 所以只需要获取上一步的最大值即可

    func maxValue(_ grid: [[Int]]) -> Int {

        let rowCount = grid.count
        let colCount = grid[0].count
        var db = Array<[Int]>(repeating: [-1,-1,-1,-1], count: grid.count)
        db[0][0] = grid[0][0]
        // 获取第0行的各个最大值
        for row in 1 ..< rowCount {
            
            db[0][row] = db[0][row-1] + grid[0][row]
        }
        // 获取第0列的各个最大值
        for col in 1 ..< colCount {
            
            db[col][0] = db[col-1][0] + grid[col][0]
        }
        
//        db[i][j] = MAX(db[i-1][j]+grid[i][j-1],db[i][j-1]+grid[i-1][j])
        for row in 1 ..< rowCount {
            for col in 1 ..< colCount {
                db[row][col] = max(db[row-1][col]+grid[row][col], db[row][col-1]+grid[row][col])
            }
        }
        return db[rowCount-1][colCount-1]
    }

    func main() {

        var gride = [[Int]]()
        var row0 = [Int]()
        row0.append(1)
        row0.append(0)
        row0.append(2)
        
        
        var row1 = [Int]()
        row1.append(0)
        row1.append(2)
        row1.append(4)
        
        
        var row2 = [Int]()
        row2.append(1)
        row2.append(3)
        row2.append(6)
        
        
        var row3 = [Int]()
        row3.append(4)
        row3.append(2)
        row3.append(4)
        
        
        gride.append(row0)
        gride.append(row1)
        gride.append(row2)
        gride.append(row3)
//        print("\(gride)")
        print(maxValue(gride))
    }
}

