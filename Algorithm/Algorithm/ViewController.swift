//
//  ViewController.swift
//  Algorithm
//
//  Created by Noah on 2020/7/21.
//  Copyright © 2020 Noah Gao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func tree(_ sender: UIButton) {
        
        self.navigationController?.pushViewController(TreeViewController(), animated: true)
    }


    @IBAction func linkedList(_ sender: UIButton) {

        self.navigationController?.pushViewController(LinkedListViewController(), animated: true)
    }

    @IBAction func array(_ sender: UIButton) {

        self.navigationController?.pushViewController(ArrayViewController(), animated: true)
    }

    @IBAction func dp(_ sender: UIButton) {

        self.navigationController?.pushViewController(DPViewController(), animated: true)
    }

    @IBAction func twoPointers(_ sender: UIButton) {

           self.navigationController?.pushViewController(TwoPointersViewController(), animated: true)
       }
}
