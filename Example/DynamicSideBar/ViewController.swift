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
    
    let dynamicSideBar: DynamicSideBar = {
        let view = DynamicSideBar()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        view.addSubview(dynamicSideBar)
        
        dynamicSideBar.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        dynamicSideBar.trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        dynamicSideBar.widthAnchor.constraint(equalToConstant: 60).isActive = true
        dynamicSideBar.heightAnchor.constraint(equalToConstant: 120).isActive = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

