//
//  OSZAttackHandler.m
//  demo
//
//  Created by Mac on 2017/4/28.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZAttackHandler.h"

@implementation OSZAttackHandler

- (void)transmitAttack:(OSZAttack *)attack
{
    [self.nextAttackHandler transmitAttack:attack];
}

@end
