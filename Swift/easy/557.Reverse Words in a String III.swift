//
//  Solution.swift
//  Demo
//
//  Created by admin on xxxxxx
//  Copyright © 2017年 enjoy. All rights reserved.
//

import Foundation

/**
 Given a string, you need to reverse the order of characters in each word within a sentence while still preserving whitespace and initial word order.
 
 Example 1:
 
 Input: "Let's take LeetCode contest"
 Output: "s'teL ekat edoCteeL tsetnoc"
 
 
 Note: In the string, each word is separated by single space and there will not be any extra space in the string.
 
 https://leetcode.com/problems/reverse-words-in-a-string-iii/
 */

extension Solution {
    func reverseWords(_ s: String) -> String {
        let splitArr = s.components(separatedBy: " ")
        let reversedArr =  splitArr.map { String($0.reversed())}
        return reversedArr.joined(separator: " ")
    }
}

