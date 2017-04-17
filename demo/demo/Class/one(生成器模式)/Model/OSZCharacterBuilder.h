//
//  OSZCharacterBuilder.h
//  demo
//
//  Created by Mac on 2017/4/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "OSZCharacter.h"

@interface OSZCharacterBuilder : NSObject

@property (nonatomic, strong) OSZCharacter *character;

//character并不知道如何构建一个有意义的属性
//本模型基于character构建有意义的角色属性
- (OSZCharacterBuilder *)buildNewCharacter;
- (OSZCharacterBuilder *)buildHeight:(float)value;
- (OSZCharacterBuilder *)buildWeight:(float)value;
- (OSZCharacterBuilder *)buildSpeed:(float)value;
- (OSZCharacterBuilder *)buildPower:(float)value;

@end
