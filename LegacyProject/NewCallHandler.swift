//
//  NewCallHandler.swift
//  LegacyProject
//
//  Created by Nikolay Aleshchenko on 5/20/17.
//  Copyright © 2017 Nikolay Aleshchenko. All rights reserved.
//

import UIKit

@objcMembers class NewCallHandler: NSObject {

    func textForNewCall() -> String? {
        if (Utils.isCallingNewCodeAllowed()) {
            return "Text from Swift class"
        }
        
        return nil
    }
    
    @nonobjc /*private*/ func anotherSwiftFunc() {
        //here `@nonobjc` overrides `@objcMembers`
        print("If you see this, 'private' and/or '@nonobjc' specifiers have been removed")
    }
}
