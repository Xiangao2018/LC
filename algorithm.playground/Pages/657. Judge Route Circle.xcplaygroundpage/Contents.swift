//: [Previous](@previous)

import Foundation

/**
 Initially, there is a Robot at position (0, 0). Given a sequence of its moves, judge if this robot makes a circle, which means it moves back to the original place.
 
 The move sequence is represented by a string. And each move is represent by a character. The valid robot moves are R (Right), L (Left), U (Up) and D (down). The output should be true or false representing whether the robot makes a circle.
 
 Example 1:
     Input: "UD"
     Output: true
 
 Example 2:
 
     Input: "LL"
     Output: false
 
 https://leetcode.com/problems/judge-route-circle/description/
 
 */

class Solution {
    func judgeCircle(_ moves: String) -> Bool {
        
        var horizontalDirection = 0
        var verticalDirection = 0
        
        for i in moves.uppercased() {
            switch i {
            case "L":  horizontalDirection += 1
            case "R":  horizontalDirection -= 1
            case "U":  verticalDirection += 1
            case "D":  verticalDirection -= 1
            default: break
            }
        }
        return horizontalDirection == 0 && verticalDirection == 0
    }
}

//: [Next](@next)
