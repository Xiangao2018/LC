//: [Previous](@previous)

import Foundation

/**
 Given a List of words, return the words that can be typed using letters of alphabet on only one row's of American keyboard like the image below.
 
 Example 1:
 
 Input: ["Hello", "Alaska", "Dad", "Peace"]
 Output: ["Alaska", "Dad"]
 
 Note:
    You may use one character in the keyboard more than once.
    You may assume the input string will only contain letters of alphabet.
 
 */

/**
 best Solution For Java
 
     public String[] findWords(String[] words) {
     return Stream.of(words).filter(s -> s.toLowerCase().matches("[qwertyuiop]*|[asdfghjkl]*|[zxcvbnm]*")).toArray(String[]::new);
     }
 
 https://leetcode.com/problems/keyboard-row/description/
 
 */

class Solution {
    func findWords(_ words: [String]) -> [String] {
        
        let keyBoardRows = ["qwertyuiop", "asdfghjkl", "zxcvbnm"]
        return words.filter { (word) -> Bool in
            var row : String?
            
            let lowerWord = word.lowercased()
            
            for kb in keyBoardRows {
                if kb.range(of: String(lowerWord.first!)) != nil {
                    row = kb
                    break
                }
            }
            
            for c in lowerWord {
                if row?.range(of: String(c)) == nil {
                    return false
                }
            }
            return true
        }
    }
}

let words = ["Hello", "Alaska", "Dad", "Peace"]
print(Solution().findWords(words))

//: [Next](@next)
