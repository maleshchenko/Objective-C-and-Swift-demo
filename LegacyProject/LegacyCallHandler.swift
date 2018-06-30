//
//  LegacyCallHandler.swift
//  LegacyProject
//
//  Created by Nikolay Aleshchenko on 5/21/17.
//  Copyright © 2017 Nikolay Aleshchenko. All rights reserved.
//

import UIKit

extension LegacyCallHandler {

    @objc func newTextForLegacyCall() -> String? {
        if (Utils.isCallingNewCodeAllowed()) {
            return "Text from Swift extension"
        }
        
        return nil
    }
}
