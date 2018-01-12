//
//  ViewController.swift
//  programmaticallyTabBar
//
//  Created by  Mario Acero  on 1/11/18.
//  Copyright © 2018 Mario Acero. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    

    @IBAction func goTo(_ sender: Any) {
        let vc = TabBarController.init(nibName: TabBarController.stringRepresentation, bundle: nil)
        UIApplication.shared.delegate?.window!!.rootViewController = vc
    }
    
}

