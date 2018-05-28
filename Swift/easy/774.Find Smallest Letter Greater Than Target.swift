//
//  Solution.swift
//  Demo
//
//  Created by admin on xxxxxx
//  Copyright © 2017年 enjoy. All rights reserved.
//

import Foundation

/**
 Given a list of sorted characters letters containing only lowercase letters, and given a target letter target, find the smallest element in the list that is larger than the given target.
 
 Letters also wrap around. For example, if the target is target = 'z' and letters = ['a', 'b'], the answer is 'a'.
 
 Examples:
 
     Input:
     letters = ["c", "f", "j"]
     target = "a"
     Output: "c"
 
     Input:
     letters = ["c", "f", "j"]
     target = "c"
     Output: "f"
 
     Input:
     letters = ["c", "f", "j"]
     target = "d"
     Output: "f"
 
     Input:
     letters = ["c", "f", "j"]
     target = "g"
     Output: "j"
 
     Input:
     letters = ["c", "f", "j"]
     target = "j"
     Output: "c"
 
     Input:
     letters = ["c", "f", "j"]
     target = "k"
     Output: "c"
 
 Note:
 
     1. letters has a length in range [2, 10000].
     2. letters consists of lowercase letters, and contains at least 2 unique letters.
     3. target is a lowercase letter.
 
 https://leetcode.com/problems/find-smallest-letter-greater-than-target/description/
 
 
 */

extension Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        guard letters.count > 2 else { fatalError("letter length Must > 2")}
    
        if let last = letters.last, target > last {
            return letters.first!
        }
        
        let length = letters.count
        
        var start = 0
        var end = letters.count
        
        while start < end {
            let mid = start + (end - start) / 2
            print(mid)
            if letters[mid] <= target {
                start = mid + 1
            } else {
                end = mid
            }
        }
        
        return letters[start % length]
    }
}

