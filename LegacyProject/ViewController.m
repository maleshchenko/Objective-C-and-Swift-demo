//
//  ViewController.m
//  LegacyProject
//
//  Created by Nikolay Aleshchenko on 5/20/17.
//  Copyright © 2017 Nikolay Aleshchenko. All rights reserved.
//

#import "ViewController.h"
#import "LegacyCallHandler.h"
#import "LegacyProject-Swift.h"

@interface ViewController ()

@property (strong) IBOutlet UIButton *callObjectiveCCodeButton;
@property (strong) IBOutlet UIButton *callSwiftCodeButton;
@property (strong) IBOutlet UILabel *objectiveCResultLabel;
@property (strong) IBOutlet UILabel *swiftResultLabel;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)callObjectiveCCode {
    //in previous implementation, we were calling textForLegacyCall method from LegacyCallHandler Objective-C class,
    //now we're calling a method from its Swift extension
    self.objectiveCResultLabel.text = [[[LegacyCallHandler alloc] init] newTextForLegacyCall];
}

- (IBAction)callSwiftCode {
    NewCallHandler *newHandler = [[NewCallHandler alloc] init];
    self.swiftResultLabel.text = [newHandler textForNewCall];
    
    //[newHandler anotherSwiftFunc]; //not working in current code, declared as 'private'
}

@end
