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
@property (strong) IBOutlet UIButton *callSwiftCCodeButton;
@property (strong) IBOutlet UILabel *objectiveCResultLabel;
@property (strong) IBOutlet UILabel *swiftResultLabel;

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)callObjectiveCCode {
    self.objectiveCResultLabel.text = [[[LegacyCallHandler alloc] init] textForLegacyCall];
}

- (IBAction)callSwiftCode {
    NewCallHandler *newHandler = [[NewCallHandler alloc] init];
    self.swiftResultLabel.text = [newHandler textForNewCall];
    
    //[newHandler unavailableSwiftFunction]; //Won't work unless declared with '@objc' in its swift file
}

@end
