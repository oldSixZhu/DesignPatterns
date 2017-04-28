//
//  OSZFood.m
//  demo
//
//  Created by Mac on 2017/4/28.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZFood.h"

@implementation OSZFood


- (void)make
{
    [self makeMeal];
    [self makeMeat];
    [self makeVegetables];
}


- (void)makeMeal
{
    NSLog(@"做主食");
}

- (void)makeMeat
{
    NSLog(@"做肉");
}

- (void)makeVegetables
{
    NSLog(@"做菜");
}

- (void)makeOther
{
    
}

@end
