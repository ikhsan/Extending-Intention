//
//  MaximumCharacterOnEditIntention.m
//  extra intention
//
//  Created by Ikhsan Assaat on 5/17/14.
//  Copyright (c) 2014 Ikhsan. All rights reserved.
//

#import "MaximumCharacterOnEditIntention.h"

static NSUInteger const kMaximumCharacter = 30;

@interface MaximumCharacterOnEditIntention () <UITextFieldDelegate>

@property (nonatomic) NSNumber *maximumCharacter;

@end

@implementation MaximumCharacterOnEditIntention

- (NSNumber *)maximumCharacter
{
    return (_maximumCharacter.unsignedIntegerValue < 1)? @(kMaximumCharacter) : _maximumCharacter;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    NSString *newText = [textField.text stringByReplacingCharactersInRange:range withString:string];
    
    return (newText.length <= self.maximumCharacter.unsignedIntegerValue);
}

@end
