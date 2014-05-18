//
//  DismissOnEnterIntention.m
//  extra intention
//
//  Created by Ikhsan Assaat on 5/17/14.
//  Copyright (c) 2014 Ikhsan. All rights reserved.
//

#import "DismissOnEnterIntention.h"

@interface DismissOnEnterIntention () <UITextFieldDelegate>
@end

@implementation DismissOnEnterIntention

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

@end
