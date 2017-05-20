//
//  NewCallHandler.swift
//  LegacyProject
//
//  Created by Nikolay Aleshchenko on 5/20/17.
//  Copyright © 2017 Nikolay Aleshchenko. All rights reserved.
//

import UIKit

class NewCallHandler: NSObject {

    @objc open func textForNewCall() -> (String) {
        if (Utils.isCallingNewCodeAllowed()) {
            return "Text from Swift class"
        }
        
        return ""
    }
    
    open func unavailableSwiftFunction() {
        print("This method won't be available to our Objective-C code unless declared with '@objc'")
    }
}
