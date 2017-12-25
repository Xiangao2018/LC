//: [Previous](@previous)

import Foundation

/**
 Write a function that takes a string as input and returns the string reversed.
 
 Example:
 Given s = "hello", return "olleh".
 
 https://leetcode.com/problems/reverse-string/description/
 
 */

class Solution {
    func reverseString(_ s: String) -> String {
        return String(s.reversed())
    }
}

print(Solution().reverseString("hello"))


//: [Next](@next)
