//
//  OSZBuildRole.h
//  demo
//
//  Created by Mac on 2017/4/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "OSZStandardCharacterBuilder.h"

@interface OSZBuildRole : NSObject

//指导者 指导 生成器 创建返回产品 
//把加工过的属性组合起来成为一个具体的角色
//创建玩家
- (OSZCharacter *)createPlayer:(OSZCharacterBuilder *)builder;
//创建boss
- (OSZCharacter *)createBoss:(OSZCharacterBuilder *)builder;

@end
