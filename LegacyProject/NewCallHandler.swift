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
