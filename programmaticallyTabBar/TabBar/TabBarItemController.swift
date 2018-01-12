//
//  ModelViewController.swift
//  programmaticallyTabBar
//
//  Created by Jose Mario Acero Castañeda on 1/11/18.
//  Copyright © 2018 Mario Acero. All rights reserved.
//

import Foundation
import UIKit

struct TabBarItemController {
    
    let controller: UIViewController
    let controllerName: String
    let imageEnbled: String
    let imageDisabled: String
    
    
    init(itemType: TabBarItems) {
        let storyBoard: UIStoryboard = UIStoryboard(name: itemType.rawValue, bundle: nil)
        switch itemType {
        case .Home:
            self.controllerName = AppConstants.ItemsTabBarName.Home.name
            self.controller = storyBoard.instantiateViewController(withIdentifier: controllerName) as! HomeViewController
            self.imageEnbled = AppConstants.ItemsTabBarName.Home.imageEnbled
            self.imageDisabled = AppConstants.ItemsTabBarName.Home.imageDisabled
            break
        case .Profile:
            self.controllerName = AppConstants.ItemsTabBarName.Profile.name
            self.controller = storyBoard.instantiateViewController(withIdentifier: controllerName) as! ProfileViewController
            self.imageEnbled = AppConstants.ItemsTabBarName.Profile.imageEnbled
            self.imageDisabled = AppConstants.ItemsTabBarName.Profile.imageDisabled
        default:
            self.controllerName = AppConstants.ItemsTabBarName.Home.name
            self.controller = storyBoard.instantiateViewController(withIdentifier: controllerName) as! HomeViewController
            self.imageEnbled = AppConstants.ItemsTabBarName.Home.imageEnbled
            self.imageDisabled = AppConstants.ItemsTabBarName.Home.imageDisabled
            break
        }
    }
}
