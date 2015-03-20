//
//  InterfaceController.h
//  iwatch WatchKit Extension
//
//  Created by xunfeng on 15/3/18.
//  Copyright (c) 2015年 darcyzhang. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface InterfaceController : WKInterfaceController

- (IBAction)wuseButtonPressed:(id)sender;
- (IBAction)miaoshaButtonPressed:(id)sender;
- (IBAction)recommendButtonPressed:(id)sender;
- (IBAction)glanceButtonPressed:(id)sender;
- (IBAction)notifyButtonPressed:(id)sender;

@end
