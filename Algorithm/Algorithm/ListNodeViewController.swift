//
//  ViewController.swift
//  linked-list
//
//  Created by Noah on 2020/7/20.
//  Copyright © 2020 Noah Gao. All rights reserved.
//

import UIKit

class ListNodeViewController: UIViewController {

    /// 206 -  反转链表 - 迭代方式 - 类似于头插法
    func reverseList01(_ head: ListNode?) -> ListNode? {

        var head = head
        var next: ListNode? = nil

        while head != nil {
            let tmp = head?.next
            head?.next = next
            next = head
            head = tmp
        }

        return head
    }

    /// 206 翻转链表 - 递归方式
    func reverseList02(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        let next = reverseList02(head?.next)
        head?.next?.next = head
        head?.next = nil
        return next
    }


    /// 1171 从链表中删去总和值为零的连续节点 - 迭代方式(双层)
    func removeZeroSumSublists01(_ head: ListNode?) -> ListNode? {
        var firstNode: ListNode? = nil
        var currNode: ListNode? = nil
        var iterNode: ListNode? = head

        while iterNode != nil {

            var next = iterNode?.next
            var sum = iterNode!.val

            while next != nil && sum != 0 {
                sum += next!.val
                next = next?.next

                if sum == 0 {
                    break
                }
            }

            if sum == 0 { // head ~ next 之间的节点都要删掉，重新从 next 算
                iterNode = next
            } else {

                if firstNode == nil {
                    firstNode = iterNode
                }

                if currNode == nil {
                    currNode = iterNode
                } else {
                    currNode?.next = iterNode
                    currNode = iterNode
                }

                iterNode = iterNode?.next
            }
        }

        currNode?.next = nil
        return firstNode
    }

    /// 21. 合并两个有序链表
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {

        guard l1 != nil else {
            return l2
        }

        guard l2 != nil else {
            return l1
        }

        var head: ListNode? = nil
        var curr: ListNode? = nil
        var l1 = l1
        var l2 = l2

        if l1!.val >= l2!.val {
            head = l2
            curr = l2

            l2 = l2!.next
        } else {
            head = l1
            curr = l1

            l1 = l1!.next
        }

        while let tl1 = l1, let tl2 = l2 {
            if tl1.val >= tl2.val {
                curr?.next = tl2
                curr = tl2
                l2 = l2?.next

            } else if tl1.val < tl2.val {
                curr?.next = tl1
                curr = tl1
                l1 = l1?.next
            }
        }

        if l1 != nil {
            curr?.next = l1
        } else if l2 != nil {
            curr?.next = l2
        } else {
            curr?.next = nil
        }

        return head

    }



    // MARK: --------
    func reverseList() {
        printAllNodes(reverseList01(make([1, 2, 3, 4, 5])))
        printAllNodes(reverseList02(make([1, 2, 3, 4, 5])))
    }

    func removeZeroSumSublists() {
        let node01 = make([1, 2, 3, -3, -2])
        printAllNodes(removeZeroSumSublists01(node01))

        let node02 = make([1,2,3,-3,4])
        printAllNodes(removeZeroSumSublists01(node02))

        let node03 = make([1,2,-3,3,1])
        printAllNodes(removeZeroSumSublists01(node03))

        let node04 = make([0, 2])
        printAllNodes(removeZeroSumSublists01(node04))
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // reverseList()
        removeZeroSumSublists()




    }
}

