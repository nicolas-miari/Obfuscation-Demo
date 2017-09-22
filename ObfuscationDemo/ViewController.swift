//
//  ViewController.swift
//  ObfuscationDemo
//
//  Created by Nicolás Miari on 2017/09/22.
//  Copyright © 2017 Nicolás Miari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let managerClass: AnyClass = accessManagerClass(), let methodName = loginMethodName() {

            let manager = (managerClass as! NSObject.Type).init()
            manager.perform(methodName, with: "AAAA")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

