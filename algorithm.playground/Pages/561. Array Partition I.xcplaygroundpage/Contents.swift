//: [Previous](@previous)

import Foundation

/**
 Given an array of 2n integers, your task is to group these integers into n pairs of integer, say (a1, b1), (a2, b2), ..., (an, bn) which makes sum of min(ai, bi) for all i from 1 to n as large as possible.
 
 Example 1:
 Input: [1,4,3,2]
 
 Output: 4
 Explanation: n is 2, and the maximum sum of pairs is 4 = min(1, 2) + min(3, 4).
 
 Note:
 
 1. n is a positive integer, which is in the range of [1, 10000].
 2. All the integers in the array will be in the range of [-10000, 10000].
 
 https://leetcode.com/problems/array-partition-i/description/
 
 */

class Solution {
    func arrayPairSum(_ nums: [Int]) -> Int {
        let newArr = nums.sorted(by: <).chunks(2)
        return newArr.reduce(0) { $0 + ($1.min() ?? 0)}
    }
}

// https://stackoverflow.com/questions/26395766/swift-what-is-the-right-way-to-split-up-a-string-resulting-in-a-string-wi/38156873#38156873
extension Array {
    func chunks(_ chunkSize: Int) -> [[Element]] {
        return stride(from: 0, to: self.count, by: chunkSize).map {
            Array(self[$0..<Swift.min($0 + chunkSize, self.count)])
        }
    }
}


//: [Next](@next)
