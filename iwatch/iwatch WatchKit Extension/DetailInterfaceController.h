//
//  DetailInterfaceController.h
//  iwatch
//
//  Created by xunfeng on 15/3/20.
//  Copyright (c) 2015年 darcyzhang. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface DetailInterfaceController : WKInterfaceController

@property (nonatomic, strong)IBOutlet WKInterfaceLabel *titleLabel;
@property (nonatomic, strong)IBOutlet WKInterfaceImage *image;

- (IBAction)purchase;

- (IBAction)shopcard;

@end
