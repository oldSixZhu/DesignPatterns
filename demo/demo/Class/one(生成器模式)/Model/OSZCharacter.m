//
//  OSZCharacter.m
//  demo
//
//  Created by Mac on 2017/4/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZCharacter.h"

@implementation OSZCharacter

//初始化下基本属性(统一设置所有模型最低属性值)
-(instancetype)init
{
    if (self = [super init])
    {
        self.height = 0;
        self.weight = 0;
        self.blood = 0;
        self.speed = 0;
        self.power = 0;
        self.attack = 0;
    }
    return self;
}

@end
