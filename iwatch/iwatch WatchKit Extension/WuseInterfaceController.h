//
//  WuseInterfaceController.h
//  iwatch
//
//  Created by xunfeng on 15/3/19.
//  Copyright (c) 2015年 darcyzhang. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface WuseInterfaceController : WKInterfaceController

@property (nonatomic, strong)IBOutlet WKInterfaceLabel *titleLabel;
@property (nonatomic, strong)IBOutlet WKInterfaceImage *image;
@end
