//
//  UITabViewController.swift
//  programmaticallyTabBar
//
//  Created by  Mario Acero on 1/11/18.
//  Copyright © 2018 Mario Acero. All rights reserved.
//

import UIKit

enum TabBarItems: String {
    case Home
    case Settings
    case Profile
    case More
}

class TabBarController: UITabBarController, UITabBarControllerDelegate {
    
    var storyBoard: UIStoryboard?
    var arrayVc: [UIViewController]?
    var controller: UIViewController?
    var itemController: TabBarItemController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.delegate = self
        arrayVc = []
        
        // Set all off ViewControllers for TabBar
        
        arrayVc?.append(setViewControllerForTabarItem(itemType: .Home))
        arrayVc?.append(setViewControllerForTabarItem(itemType: .Profile))
        viewControllers = arrayVc
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
}

private extension TabBarController{
    
    func setViewControllerForTabarItem(itemType: TabBarItems)-> UIViewController {
        itemController =  TabBarItemController(itemType: itemType)
        itemController.controller.tabBarItem = UITabBarItem.init(title: itemType.rawValue, image: UIImage(named: itemController.imageDisabled )!.withRenderingMode(.alwaysOriginal), selectedImage: UIImage(named:itemController.imageEnbled))
        let viewController = UINavigationController.init(rootViewController: itemController.controller)
        return viewController
    }
}
