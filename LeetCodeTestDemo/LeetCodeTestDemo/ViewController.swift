//
//  ViewController.swift
//  LeetCodeTestDemo
//
//  Created by enjoy on 2018/5/27.
//  Copyright © 2018年 enjoy. All rights reserved.
//

import UIKit

extension Solution {
    // 78. 子集
    func subsets(_ nums: [Int]) -> [[Int]] {
    
        var result: [[Int]] = [[]]
        
        for number in nums {
            let mapResults = result.map { subsets -> [Int] in
                var subsets = subsets
                subsets.append(number)
                return subsets
            }
            result += mapResults
        }
        return result
    }
    
    // 90. 子集 II
    func subsetsWithDup(_ nums: [Int]) -> [[Int]] {
        
        let nums = nums.sorted()
        
        var result: [[Int]] = [[]]

        var index = 0
        while index < nums.count {
            var dupCount = 0
            
            for dupIndex in index..<nums.count {
                if nums[dupIndex] == nums[index] {
                    dupCount += 1
                } else {
                    break
                }
            }
            
            let existSubSets = result
            for existSubset in existSubSets {
                var subset = existSubset
                for _ in 0..<dupCount {
                    subset.append(nums[index])
                    result.append(subset)
                }
            }
            index += dupCount
        }
        return result
    }
}

/**

 
 */


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        print(Solution().subsetsWithDup([1,1,1,2,2]))
    }
}

