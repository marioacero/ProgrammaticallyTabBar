//
//  NSObjectExtension.swift
//  programmaticallyTabBar
//
//  Created by  Mario Acero  on 1/11/18.
//  Copyright © 2018 Mario Acero. All rights reserved.
//

import Foundation

extension NSObject {
    
    // Name Of class
    class var stringRepresentation: String {
        let name = String(describing: self)
        return name
    }
}
