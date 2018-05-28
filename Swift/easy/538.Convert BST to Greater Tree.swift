//
//  Solution.swift
//  Demo
//
//  Created by admin on xxxxxx
//  Copyright © 2017年 enjoy. All rights reserved.
//

import Foundation

/**
 Given a Binary Search Tree (BST), convert it to a Greater Tree such that every key of the original BST is changed to the original key plus sum of all keys greater than the original key in BST.
 
 Example:
 
  Input: The root of a Binary Search Tree like this:
       5
     /   \
    2     13
 
  Output: The root of a Greater Tree like this:
     18
    /   \
  20     13
 
 https://leetcode.com/problems/convert-bst-to-greater-tree/description/

 */

// public class TreeNode {
//     public var val: Int
//     public var left: TreeNode?
//     public var right: TreeNode?
//     public init(_ val: Int) {
//         self.val = val
//         self.left = nil
//         self.right = nil
//     }
// }

extension Solution {
    func convertBST(_ root: TreeNode?) -> TreeNode? {
        
        func conver(_ node : TreeNode?, _ val : Int = 0) -> Int {

            guard let node = node else { return val }
            let right = conver(node.right, val)
            let left = conver(node.left, node.val + right)
            node.val = node.val + right
            return left
        }
        
        _ = conver(root, 0)
        return root
    }
}



