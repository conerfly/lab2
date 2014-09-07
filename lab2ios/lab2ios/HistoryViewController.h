//
//  HistoryViewController.h
//  lab2ios
//
//  Created by YuanZhengyu on 7/09/2014.
//  Copyright (c) 2014 UOW. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "YoCatchModel.h"
@interface HistoryViewController : UITableViewController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, strong) NSMutableArray* historyArray;
@end
