//
//  OSZStandardCharacterBuilder.m
//  demo
//
//  Created by Mac on 2017/4/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZStandardCharacterBuilder.h"

@implementation OSZStandardCharacterBuilder

- (OSZCharacterBuilder *)buildHeight:(float)value
{
    //1点身高加10点血
    self.character.blood += 10 * value;
    //处理过后用新值更新目标角色,然后将自身返回
    return  [super buildHeight:value];
}

- (OSZCharacterBuilder *)buildWeight:(float)value
{
    //1点体重加100点血
    self.character.blood += 100 * value;
    
    return  [super buildWeight:value];
}

- (OSZCharacterBuilder *)buildSpeed:(float)value
{
    //1点速度加10点攻击力
    self.character.attack += 10 * value;
    
    return  [super buildSpeed:value];
}

- (OSZCharacterBuilder *)buildPower:(float)value
{
    //1点力量加100点攻击力
    self.character.attack += 100 * value;
    
    return [super buildPower:value];
}

@end
