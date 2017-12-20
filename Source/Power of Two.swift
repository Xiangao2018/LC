//
//  Power of Two.swift
//  Leetcode-easy-project
//
//  Created by admin on 2017/12/20.
//  Copyright © 2017年 enjoy. All rights reserved.
//

import Foundation

/**
    Given an integer, write a function to determine if it is a power of two.

    https://leetcode.com/problems/power-of-two/description/
 */


class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        return (n > 0) && (n & (n-1) == 0)
    }
}
