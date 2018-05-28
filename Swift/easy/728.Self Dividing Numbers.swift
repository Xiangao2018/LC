//
//  Self Dividing Numbers.swift
//  LeetCode-Easy-Project
//
//  Created by admin on 2017/12/19.
//  Copyright © 2017年 enjoy. All rights reserved.
//

import Foundation

/**
 A self-dividing number is a number that is divisible by every digit it contains.

 For example, 128 is a self-dividing number because 128 % 1 == 0, 128 % 2 == 0, and 128 % 8 == 0.

 Also, a self-dividing number is not allowed to contain the digit zero.

 Given a lower and upper number bound, output a list of every possible self dividing number, including the bounds if possible.

 Example 1:
 Input:
 left = 1, right = 22
 Output: [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
 Note:

 The boundaries of each input argument are 1 <= left <= right <= 10000.
 */

class Solution {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        if left > right { fatalError("left must lower than right") }
        if left < 1 { fatalError("the lowest left is 1") }
        if right > 10000 { fatalError("the upperest right is 10000") }
        
        func isSelfDividingNumber(_ number : Int) -> Bool  {
            let str = String(number)
            if str.contains("0") { return false }
            
            for character in str {
                let digit = Int(String(character))!
                if number % digit != 0 { return false }
            }
            return true
        }
        
        var dividingNumbers = [Int]()
        
        for i in left...right {
            if isSelfDividingNumber(i) { dividingNumbers.append(i)}
        }
        return dividingNumbers
    }
}
