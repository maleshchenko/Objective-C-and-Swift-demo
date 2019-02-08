import UIKit

extension LegacyCallHandler {

    @objc func newTextForLegacyCall() -> String? {
        if (Utils.isCallingNewCodeAllowed()) {
            return "Text from Swift extension"
        }
        
        return nil
    }
}
