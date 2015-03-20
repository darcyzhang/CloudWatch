//
//  RecommendInterfaceController.h
//  iwatch
//
//  Created by xunfeng on 15/3/20.
//  Copyright (c) 2015年 darcyzhang. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface RecommendInterfaceController : WKInterfaceController

@property (nonatomic, strong)IBOutlet WKInterfaceSwitch *switchButton;
@property (nonatomic, strong)IBOutlet WKInterfaceLabel  *label;

- (IBAction)switchAction:(BOOL)on;

- (IBAction)sliderAction:(float)value;

@end
