//
//  ViewController.m
//  ExtraIntention
//
//  Created by Ikhsan Assaat on 5/17/14.
//  Copyright (c) 2014 Ikhsan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation ViewController

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self.textField becomeFirstResponder];
}

@end
