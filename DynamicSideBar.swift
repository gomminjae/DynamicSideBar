//
//  DynamicSideBar.swift
//  DynamicSideBar
//
//  Created by 권민재 on 2023/01/21.
//

import UIKit

enum DynamicSideBarType {
    case standard
    case memo
    case custom
}

enum GestureType {
    case pan
    case longGesture
}

protocol DynamicSideBarDelegate {
    func viewWillStart(view: DynamicSideBar, viewType: DynamicSideBarType)
    func viewTapped(view: DynamicSideBar, completion: ((Void)))
}

open class DynamicSideBar: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        //baseView
        addSubview(baseView)
        baseView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        baseView.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        baseView.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        baseView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        //sideBar
        baseView.addSubview(sideBar)
        sideBar.centerXAnchor.constraint(equalTo: baseView.centerXAnchor).isActive = true
        sideBar.centerYAnchor.constraint(equalTo: baseView.centerYAnchor).isActive = true
        sideBar.widthAnchor.constraint(equalTo: baseView.widthAnchor, constant: 20).isActive = true
        sideBar.heightAnchor.constraint(equalTo: baseView.heightAnchor, constant: 20).isActive = true
        
        //deleteButton
    }
    
    //MARK: UI👽
    lazy var baseView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()
    
    lazy var sideBar: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var deleteButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    
    
    
}
