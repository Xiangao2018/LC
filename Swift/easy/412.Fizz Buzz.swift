//
//  Fizz Buzz.swift
//  LeetCode-Easy-Project
//
//  Created by admin on 2017/12/19.
//  Copyright © 2017年 enjoy. All rights reserved.
//

/**
 Write a program that outputs the string representation of numbers from 1 to n.
 
 But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”. For numbers which are multiples of both three and five output “FizzBuzz”.
 
 Example:
 
    n = 15,
 
    Return:
    [
        "1",
        "2",
        "Fizz",
        "4",
        "Buzz",
        "Fizz",
        "7",
        "8",
        "Fizz",
        "Buzz",
        "11",
        "Fizz",
        "13",
        "14",
        "FizzBuzz"
    ]
 
https://leetcode.com/problems/fizz-buzz/description/
 */

import Foundation

class Solution {
    func fizzBuzz(_ n: Int) -> [String] {
        
        var rs  = [String]()
        
        var fizzIndex = 3
        var buzzIndex = 5
        
        for i in 1...n {
            if i == fizzIndex && i == buzzIndex {
                rs.append("FizzBuzz")
                fizzIndex += 3
                buzzIndex += 5
                
            } else if i == fizzIndex {
                rs.append("Fizz")
                fizzIndex += 3
                
            } else if i == buzzIndex {
                rs.append("Buzz")
                buzzIndex += 5
            } else {
                rs.append("\(i)")
            }
        }
        return rs
    }
}
