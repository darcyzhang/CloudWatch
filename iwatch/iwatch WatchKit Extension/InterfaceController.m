//
//  InterfaceController.m
//  iwatch WatchKit Extension
//
//  Created by xunfeng on 15/3/18.
//  Copyright (c) 2015年 darcyzhang. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];

    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

- (IBAction)wuseButtonPressed:(id)sender
{
    NSArray *controllers = @[@"tmall_wuse",@"tmall_wuse",@"tmall_wuse",@"tmall_wuse",@"tmall_wuse"];
   
    NSArray *contents = @[@{@"title":@"亚洲像[火星包邮]",@"image":@"image2.png"},
                          @{@"title":@"瞌睡鹿[火星包邮]",@"image":@"image3.png"},
                          @{@"title":@"蛋疼豹[火星包邮]",@"image":@"image4.png"},
                          @{@"title":@"大水单反狮子都喜欢",@"image":@"image5.png"},
                          @{@"title":@"买法拉利送大喵",@"image":@"image6.png"}];
    
    [self presentControllerWithNames:controllers contexts:contents];
    

}

- (IBAction)miaoshaButtonPressed:(id)sender
{
    NSArray *contents = @[@{@"title":@"10:00 开抢",@"image":@"image7.png",@"dtitle":@"大喵"},
                          @{@"title":@"11:00 开抢",@"image":@"image6.png",@"dtitle":@"法拉利"},
                          @{@"title":@"12:00 开抢",@"image":@"image5.png",@"dtitle":@"大水单反"},
                          @{@"title":@"13:00 开抢",@"image":@"image4.png",@"dtitle":@"中喵"},
                          @{@"title":@"14:00 开抢",@"image":@"image3.png",@"dtitle":@"小鹿公仔"},
                          @{@"title":@"15:00 开抢",@"image":@"image2.png",@"dtitle":@"大象公仔"},
                          @{@"title":@"16:00 开抢",@"image":@"image1.png",@"dtitle":@"丛林之王，送猫沙"}];
    
    [self pushControllerWithName:@"tmall_miaosha" context:contents];
}

- (IBAction)recommendButtonPressed:(id)sender
{
    NSArray *contents = @[@{@"title":@"销量榜No1",@"image":@"image1.png"},
                          @{@"title":@"销量榜No2",@"image":@"image2.png"},
                          @{@"title":@"销量榜No3",@"image":@"image3.png"},
                          @{@"title":@"销量榜No4",@"image":@"image4.png"}];
    
    [self presentControllerWithName:@"tmall_recommend" context:contents];
}

- (IBAction)glanceButtonPressed:(id)sender
{
    
}

- (IBAction)notifyButtonPressed:(id)sender
{
    
}

@end



