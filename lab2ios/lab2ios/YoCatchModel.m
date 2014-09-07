//
//  YoCatchModel.m
//  lab2ios
//
//  Created by YuanZhengyu on 7/09/2014.
//  Copyright (c) 2014 UOW. All rights reserved.
//

#import "YoCatchModel.h"

@implementation YoCatchModel
- (instancetype)initWithUserName:(NSString *)username message: (NSString *) yoMessage
{
    self = [self init];
    if (self) {
        _username = [username copy];
        _yoMessage = [yoMessage copy];
    }
    return self;
    
}

@end
