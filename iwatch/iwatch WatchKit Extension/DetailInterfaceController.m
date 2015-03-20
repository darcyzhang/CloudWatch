//
//  DetailInterfaceController.m
//  iwatch
//
//  Created by xunfeng on 15/3/20.
//  Copyright (c) 2015年 darcyzhang. All rights reserved.
//

#import "DetailInterfaceController.h"


@interface DetailInterfaceController()

@end


@implementation DetailInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    NSString *title = [context objectForKey:@"dtitle"];
    [self.titleLabel setText:title];
    
    //NSString *imageName = [context objectForKey:@"image"];
    //[self.image setImage:[UIImage imageNamed:imageName]]; //从 WatchKit Extension获取，由iPhone获取后传送
    
    NSString *imageName = [context objectForKey:@"image"];
    [self.image setImageNamed:imageName];
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)purchase
{
    NSLog(@"purchase");
}

- (IBAction)shopcard
{
    NSLog(@"add shop card");
}

@end



