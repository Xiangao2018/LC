//
//  ArrayViewController.swift
//  Algorithm
//
//  Created by Noah on 2020/7/22.
//  Copyright © 2020 Noah Gao. All rights reserved.
//  数组

import UIKit

class ArrayViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "array"
        
    }

    /// 剑指 Offer 11. 旋转数组的最小数字 - 二分查找法
    /// 154. 寻找旋转排序数组中的最小值 II - 二分查找法
    /// 153. 寻找旋转排序数组中的最小值
    func minArray(_ numbers: [Int]) -> Int {
        var left = 0
        var right = numbers.count - 1
        while left <= right {
            let mid = left + (right - left) >> 1

            if numbers[mid] < numbers[right] {
                right = mid
            } else if numbers[mid] > numbers[right] {
                left = mid + 1
            } else {
                right -= 1
            }
        }
        return numbers[left]
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        debugPrint(minArray([2, 2, 2, 0, 1]))
        debugPrint(minArray([1, 3, 5]))
    }
}
