//
//  ViewController.swift
//  DynamicSideBar
//
//  Created by gomminjae on 01/21/2023.
//  Copyright (c) 2023 gomminjae. All rights reserved.
//

import UIKit
import DynamicSideBar

class ViewController: UIViewController {
    
    let dynamicSideBar = DynamicSideBar()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(dynamicSideBar)
        dynamicSideBar.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        dynamicSideBar.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        dynamicSideBar.widthAnchor.constraint(equalToConstant: 100).isActive = true
        dynamicSideBar.heightAnchor.constraint(equalToConstant: 100).isActive = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

