//
//  NewCallHandler.swift
//  LegacyProject
//
//  Created by Nikolay Aleshchenko on 5/20/17.
//  Copyright © 2017 Nikolay Aleshchenko. All rights reserved.
//

import UIKit

class NewCallHandler: NSObject {

    func textForNewCall() -> String? {
        if (Utils.isCallingNewCodeAllowed()) {
            return "Text from Swift class"
        }
        
        return nil
    }
    
    private func anotherSwiftFunc() {
        print("If you see this, 'private' specifier has been removed")
    }
}
