//
//  Hamming Distance.swift
//  LeetCode-Easy-Project
//
//  Created by admin on 2017/12/19.
//  Copyright © 2017年 enjoy. All rights reserved.
//

import Foundation

/**
 The Hamming distance between two integers is the number of positions at which the corresponding bits are different.
 
 Given two integers x and y, calculate the Hamming distance.
 
 Note:
 0 ≤ x, y < 2^31.
 
 Input: x = 1, y = 4
 
 Output: 2
 
 Explanation:
 1   (0 0 0 1)
 4   (0 1 0 0)
 ↑   ↑
 
 The above arrows point to positions where the corresponding bits are different.
 
 https://leetcode.com/problems/hamming-distance/

 */

class Solution {
    
    // Using >> op, Nice Solution
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        
        let rs = x ^ y
        if rs == 0 { return 0}
        
        return rs % 2 + hammingDistance(x>>1, y>>1)
    }
    
    
    // Solution Conver to string
    //    func hammingDistance(_ x: Int, _ y: Int) -> Int {
    //        guard x >= 0, y >= 0 else {
    //            return 0
    //        }
    //        let result = String(x ^ y, radix: 2).filter { $0 == "1"}
    //        return result.count
    //    }
}

