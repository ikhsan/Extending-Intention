//
//  ITNTextField.h
//  extra intention
//
//  Created by Ikhsan Assaat on 5/17/14.
//  Copyright (c) 2014 Ikhsan. All rights reserved.
//

@import UIKit;

@interface ITNTextField : UITextField

@property (nonatomic, strong) IBOutletCollection(id) NSArray *delegates;

@end
