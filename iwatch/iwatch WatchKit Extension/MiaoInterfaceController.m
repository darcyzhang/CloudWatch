//
//  MiaoInterfaceController.m
//  iwatch
//
//  Created by xunfeng on 15/3/19.
//  Copyright (c) 2015年 darcyzhang. All rights reserved.
//

#import "MiaoInterfaceController.h"


@interface MiaoInterfaceController()

@property (nonatomic, strong)NSArray *items;

@end


@implementation MiaoInterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    NSArray *data = context;
    self.items = data;
    
    [self.table setNumberOfRows:[data count] withRowType:@"mainRowType"];
    
    for (NSDictionary *dict in data)
    {
        NSInteger index = [data indexOfObject:dict];
        
        MiaoRowController *row = [self.table rowControllerAtIndex:index];
        [row.label setText:[dict objectForKey:@"title"]];
        [row.image setImageNamed:[dict objectForKey:@"image"]];
    }
}

- (void)willActivate {

    [super willActivate];
    
}

- (void)didDeactivate {

    [super didDeactivate];
}

- (IBAction)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex
{
    NSDictionary *dict = [self.items objectAtIndex:rowIndex];
    
    [self pushControllerWithName:@"tmall_detail" context:dict];
    
}

@end


@implementation MiaoRowController



@end


