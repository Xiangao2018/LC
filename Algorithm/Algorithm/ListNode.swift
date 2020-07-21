//
//  ListNode.swift
//  linked-list
//
//  Created by Noah on 2020/7/20.
//  Copyright © 2020 Noah Gao. All rights reserved.
//

import Foundation

// 链表相关
public class ListNode {
    public var val: Int
    public var next: ListNode?

    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

extension ListNode: CustomStringConvertible {
    public var description: String {
        return "\(val)"
    }
}

extension ListNode: CustomDebugStringConvertible {
    public var debugDescription: String {
        return description
    }
}


func printAllNodes(_ head: ListNode?) {
    var current = head

    while current != nil {
        let terminator = current?.next != nil ? "->" : "->NULL"
        debugPrint( current!.val, separator: "", terminator: terminator)
        current = current?.next
    }
    debugPrint()
}

// MARK: 构建Node
func make(_ vals: [Int]) -> ListNode? {
    guard vals.isEmpty == false else { return nil }

    let nodes = vals.map { ListNode($0) }

    for i in 1..<nodes.count {
        let pre = nodes[i-1]
        let curr = nodes[i]
        pre.next = curr
    }
    return nodes.first
}
