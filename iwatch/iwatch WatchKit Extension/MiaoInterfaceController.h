//
//  MiaoInterfaceController.h
//  iwatch
//
//  Created by xunfeng on 15/3/19.
//  Copyright (c) 2015年 darcyzhang. All rights reserved.
//

#import <WatchKit/WatchKit.h>
#import <Foundation/Foundation.h>

@interface MiaoInterfaceController : WKInterfaceController

@property (nonatomic, strong)IBOutlet WKInterfaceTable *table;

- (IBAction)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex;

@end


@interface MiaoRowController : NSObject

@property (nonatomic, strong)IBOutlet WKInterfaceImage *image;
@property (nonatomic, strong)IBOutlet WKInterfaceLabel *label;

@end