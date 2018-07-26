//
//  Solution.swift
//  Demo
//
//  Created by admin on xxxxxx
//  Copyright © 2017年 enjoy. All rights reserved.
//

import Foundation

/**
 Given a 32-bit signed integer, reverse digits of an integer.
 
 Example 1:
 
 Input: 123
 Output: 321
 
 Example 2:
 
 Input: -123
 Output: -321
 
 Example 3:
 Input: 120
 Output: 21
 
 Note:
 Assume we are dealing with an environment which could only store integers within the 32-bit signed integer range: [−231,  231 − 1]. For the purpose of this problem, assume that your function returns 0 when the reversed integer overflows.
 
 EN: https://leetcode.com/problems/reverse-integer/description/
 CN: https://leetcode-cn.com/problems/reverse-integer/description/
 */

extension Solution {
    func reverse(_ x: Int) -> Int {
        
        var result = x % 10
        var left = abs(x / 10)
        print(result, left)
        while left != 0 {
            result = result * 10 + left % 10;
            left = left / 10
        }
        return result
    }
}


