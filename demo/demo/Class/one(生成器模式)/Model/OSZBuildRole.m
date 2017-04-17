//
//  OSZBuildRole.m
//  demo
//
//  Created by Mac on 2017/4/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZBuildRole.h"

@implementation OSZBuildRole

- (OSZCharacter *)createPlayer:(OSZCharacterBuilder *)builder
{
    //初始化
    [builder buildNewCharacter];
    //加工
    [builder buildHeight:1];
    [builder buildWeight:10];
    [builder buildSpeed:1];
    [builder buildPower:10];
    //返回加工过的具体属性模型
    return builder.character;
    
}

- (OSZCharacter *)createBoss:(OSZCharacterBuilder *)builder
{
    
    [builder buildNewCharacter];
    
    [builder buildHeight:10];
    [builder buildWeight:100];
    [builder buildSpeed:10];
    [builder buildPower:100];
    
    return builder.character;
}


@end
