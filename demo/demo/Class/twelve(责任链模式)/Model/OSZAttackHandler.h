//
//  OSZAttackHandler.h
//  demo
//
//  Created by Mac on 2017/4/28.
//  Copyright © 2017年 OSZ. All rights reserved.
//

//根攻击处理者类
#import <Foundation/Foundation.h>
#import "OSZAttack.h"

@interface OSZAttackHandler : NSObject

//攻击处理者
@property (nonatomic, strong) OSZAttackHandler *nextAttackHandler;

//传递攻击
- (void)transmitAttack:(OSZAttack *)attack;

@end
