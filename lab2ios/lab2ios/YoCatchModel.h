//
//  YoCatchModel.h
//  lab2ios
//
//  Created by YuanZhengyu on 7/09/2014.
//  Copyright (c) 2014 UOW. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YoCatchModel : NSObject
/**
 Name of the Yo user. Currently this is local */
@property (nonatomic, strong) NSString* username;
/**
 History of the messages sent with Yo */
@property (nonatomic,strong) NSString* yoMessage;
/**
 Class method for getting the default Yo message Question 6 answer here.
 */
/**
 Instance method for adding data into the history array */
// Your answer to q7 here
//- (void) addString;
//- (instancetype)initWithUserName:(NSString *)username;
- (instancetype)initWithUserName:(NSString *)username message: (NSString *) yoMessage;
//- (instancetype)init;
//- (NSMutableArray*)description;
@end
