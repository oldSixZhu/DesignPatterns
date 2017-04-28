//
//  OSZChineseFood.m
//  demo
//
//  Created by Mac on 2017/4/28.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZChineseFood.h"

@implementation OSZChineseFood

//重写make方法,加入中餐特有的食物
- (void)makeVegetables
{
    [self chao];
}

- (void)chao
{
    NSLog(@"炒个菜");
}

@end
