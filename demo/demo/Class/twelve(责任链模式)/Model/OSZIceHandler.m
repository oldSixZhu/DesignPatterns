//
//  OSZIceHandler.m
//  demo
//
//  Created by Mac on 2017/4/28.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZIceHandler.h"
#import "OSZIceAttack.h"

@implementation OSZIceHandler
- (void)transmitAttack:(OSZAttack *)attack
{
    //如果是冰攻击就拦截下来
    if ([attack isKindOfClass:[OSZIceAttack class]])
    {
        NSLog(@"我拦截住了冰攻击");
    }
    //如果不是就返回给父类,再去给别的人处理
    else
    {
        NSLog(@"我挡不住这个攻击");
        [super transmitAttack:attack];
    }
}

@end
