//
//  ITNTextField.m
//  extra intention
//
//  Created by Ikhsan Assaat on 5/17/14.
//  Copyright (c) 2014 Ikhsan. All rights reserved.
//

#import "ITNTextField.h"

@interface ITNTextField () <UITextFieldDelegate>

@end

@implementation ITNTextField

- (instancetype)initWithFrame:(CGRect)frame
{
    if (!(self = [super initWithFrame:frame])) return nil;
    
    [self initializeSelfAsDelegate];
    
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (!(self = [super initWithCoder:aDecoder])) return nil;
    
    [self initializeSelfAsDelegate];
    
    return self;
}

- (void)initializeSelfAsDelegate
{
    self.delegate = self;
}

#pragma mark -

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    BOOL shouldReturn = YES;
    
    // traverse and call method in all delegates
    // once there's a delegate that returns NO then the 'main' delegate returns NO
    for (id<UITextFieldDelegate> delegate in self.delegates) {
        
        // skip if delegate does not respond to selector
        if (![delegate respondsToSelector:@selector(textFieldShouldReturn:)]) continue;
        
        BOOL shouldThisDelegateReturn = [delegate textFieldShouldReturn:textField];
        if (!shouldThisDelegateReturn) shouldReturn = NO;
    }
    
    return shouldReturn;
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string
{
    BOOL shouldChange = YES;
    
    for (id<UITextFieldDelegate> delegate in self.delegates) {
        if (![delegate respondsToSelector:@selector(textField:shouldChangeCharactersInRange:replacementString:)]) continue;
        
        BOOL shouldThisDelegateChange = [delegate textField:textField shouldChangeCharactersInRange:range replacementString:string];
        if (!shouldThisDelegateChange) shouldChange = NO;
    }
    
    return shouldChange;
}

@end
