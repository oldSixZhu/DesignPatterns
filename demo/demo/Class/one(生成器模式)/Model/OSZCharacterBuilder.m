//
//  OSZCharacterBuilder.m
//  demo
//
//  Created by Mac on 2017/4/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//


#import "OSZCharacterBuilder.h"


@implementation OSZCharacterBuilder


- (OSZCharacterBuilder *)buildNewCharacter
{
    self.character = [[OSZCharacter alloc]init];
    return self;
}

- (OSZCharacterBuilder *)buildHeight:(float)value
{
    self.character.height = value;
    return  self;
}
- (OSZCharacterBuilder *)buildWeight:(float)value
{
    self.character.weight = value;
    return  self;
}
- (OSZCharacterBuilder *)buildSpeed:(float)value
{
    self.character.speed = value;
    return  self;
}
- (OSZCharacterBuilder *)buildPower:(float)value
{
    self.character.power = value;
    return  self;
}


@end
