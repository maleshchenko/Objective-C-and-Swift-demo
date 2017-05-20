//
//  NewCallHandler.swift
//  LegacyProject
//
//  Created by Nikolay Aleshchenko on 5/20/17.
//  Copyright © 2017 Nikolay Aleshchenko. All rights reserved.
//

import UIKit

@objc class NewCallHandler: NSObject {

    open func textForNewCall() -> (String) {
        if (Utils.isCallingNewCodeAllowed()) {
            return "Text from Swift class"
        }
        
        return ""
    }
}
