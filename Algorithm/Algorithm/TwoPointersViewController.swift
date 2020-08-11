//
//  TwoPointersViewController.swift
//  Algorithm
//
//  Created by Noah on 2020/8/11.
//  Copyright © 2020 Noah Gao. All rights reserved.
//

import UIKit

class TwoPointersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    // 19. 删除链表的倒数第N个节点 - 双指针  --- 双指针需要考虑的是指针的起点在哪里

    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {

        let dummy = ListNode(0)
        dummy.next = head

        var fast: ListNode? = dummy
        var slow: ListNode? = dummy

        for _ in 0...n {
            slow = slow?.next
        }

        while slow?.next != nil {
            fast = fast?.next
            slow = slow?.next
        }

        fast?.next = fast?.next?.next

        return dummy.next
    }
    


}
