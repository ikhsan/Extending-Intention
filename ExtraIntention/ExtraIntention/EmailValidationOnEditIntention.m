//
//  EmailValidationOnEditIntention.m
//  extra intention
//
//  Created by Ikhsan Assaat on 5/17/14.
//  Copyright (c) 2014 Ikhsan. All rights reserved.
//

#import "NSString+Email.h"
#import "EmailValidationOnEditIntention.h"

@interface EmailValidationOnEditIntention () <UITextFieldDelegate>

@property (nonatomic, weak) IBOutlet id target;
@property (nonatomic, copy) NSString *validationKeyPath;

@end

@implementation EmailValidationOnEditIntention

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString *text = [textField.text stringByReplacingCharactersInRange:range withString:string];
    
    [self.target setValue:@(text.isValidEmail) forKeyPath:self.validationKeyPath];
    
    return YES;
}

@end
