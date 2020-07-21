//
//  TreeViewController.swift
//  Algorithm
//
//  Created by Noah on 2020/7/21.
//  Copyright © 2020 Noah Gao. All rights reserved.
//

import UIKit

class TreeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Tree"
        view.backgroundColor = .white
    }

    //
    func generateTrees(_ n: Int) -> [TreeNode?] {

        func generate(from start: Int, end: Int) -> [TreeNode?] {

            if start > end {
                return [nil]
            }

            if start == end {
                return [TreeNode(start)]
            }
            
            var treeNodes: [TreeNode] = []

            for i in start...end {
                let leftTrees = generate(from: 1, end: i - 1)
                let rightTrees = generate(from: i + 1, end: end)

                for left in leftTrees {
                    for right in rightTrees {
                        let tree = TreeNode(i)
                        tree.left = left
                        tree.right = right
                        treeNodes.append(tree)
                    }
                }
            }
            return treeNodes
        }

        guard n > 0 else { return [] }
        return generate(from: 1, end: n)
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        debugPrint(generateTrees(1))
        debugPrint(generateTrees(2))
        debugPrint(generateTrees(3))

//        debugPrint(generateTrees(3))
    }
}
