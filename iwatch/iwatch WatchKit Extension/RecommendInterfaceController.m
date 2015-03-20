//
//  RecommendInterfaceController.m
//  iwatch
//
//  Created by xunfeng on 15/3/20.
//  Copyright (c) 2015年 darcyzhang. All rights reserved.
//

#import "RecommendInterfaceController.h"


@interface RecommendInterfaceController()

@property (nonatomic, strong)NSString *date;
@property (nonatomic, assign)BOOL      flag;

@end


@implementation RecommendInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    self.date = @"日";
    self.flag = @"YES";
    /*
    NSArray *menuItems = context;
    
    for (NSDictionary *item in menuItems)
    {
        SEL selector = NSSelectorFromString([NSString stringWithFormat:@"itemPressed%lu",(unsigned long)[menuItems indexOfObject:item] + 1]);
        
        UIImage *image = [UIImage imageNamed:[item objectForKey:@"image"]];
        NSString *title = [item objectForKey:@"title"];
        [self addMenuItemWithImage:image title:title action:selector];
    }
*/
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (void)itemPressed1
{
    NSLog(@"item 1 pressed");
}

- (void)itemPressed2
{
    NSLog(@"item 2 pressed");
}

- (void)itemPressed3
{
    NSLog(@"item 3 pressed");
}

- (void)itemPressed4
{
    NSLog(@"item 4 pressed");
}

- (IBAction)switchAction:(BOOL)on
{
    self.flag = on;
    if (on)
    {
        [self.label setText:[NSString stringWithFormat:@"每%@为您推荐",self.date]];
        
    }
    else
    {
        [self.label setText:@"不再推荐"];
    }
}

- (IBAction)sliderAction:(float)value
{
    switch ((int)value)
    {
        case 0:
            self.date = @"小时";
            break;
        case 1:
            self.date = @"日";
            break;
        case 2:
            self.date = @"周";
            break;
        case 3:
            self.date = @"年";
            break;
            
        default:
            break;
    }
    
    if (self.flag)
    {
        [self.label setText:[NSString stringWithFormat:@"每%@为您推荐",self.date]];
    }
}



@end



