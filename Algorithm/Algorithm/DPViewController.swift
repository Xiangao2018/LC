//
//  DPViewController.swift
//  Algorithm
//
//  Created by Noah on 2020/7/23.
//  Copyright © 2020 Noah Gao. All rights reserved.
//  动态规划

import UIKit

class DPViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "DP"

    }

    ///  322. 零钱兑换  - 动态规划
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {

        // 1. 缓存的值
        var dp = [Int](repeating: amount + 1, count: amount + 1)
        dp[0] = 0

        // 2. 初始值
        // coin [1, 2, 3, 5]
        for i in 0...amount {
            for coin in coins {
                if i - coin >= 0 {
                    dp[i] = min(dp[i], dp[i - coin] + 1)
                }
            }
        }

        if dp[amount] > amount {
            return -1
        }
        return dp[amount]
    }


    // 64. 最小路径和  -- 动态规划
    func minPathSum(_ grid: [[Int]]) -> Int {

        guard grid.isEmpty == false else { return 0 }

        // 1. 明确 dp 数组内容的含义 --- 表示的是最短的路径内容
        var dp:[[Int]] = []

        // 2. 初始值
        for arr in grid {
            dp.append([Int](repeating: 0, count: arr.count))
        }

        // 3. 状态转移方程
        for index in 0..<grid.count {

            let element = grid[index]

            for i in 0..<element.count {
                if index == 0 { // 如果是首行
                    if i == 0 {
                        dp[index][i] = element[i]
                    } else {
                        dp[index][i] = dp[index][i - 1] + element[i]
                    }
                } else { // 非首行
                    if i == 0 { // 首列
                        dp[index][i] = dp[index - 1][i] + element[i]
                    } else {
                        dp[index][i] = min(dp[index - 1][i], dp[index][i-1]) + element[i]
                    }
                }
            }
        }

        return dp.last?.last ?? 0

    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
