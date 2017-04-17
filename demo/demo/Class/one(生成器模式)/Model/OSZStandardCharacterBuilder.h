//
//  OSZStandardCharacterBuilder.h
//  demo
//
//  Created by Mac on 2017/4/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZCharacterBuilder.h"

@interface OSZStandardCharacterBuilder : OSZCharacterBuilder

//重载下父类的方法,加工真正角色的属性逻辑
//加入身高体重对血量影响的逻辑
//速度力量对攻击力影响的逻辑
- (OSZCharacterBuilder *)buildHeight:(float)value;
- (OSZCharacterBuilder *)buildWeight:(float)value;
- (OSZCharacterBuilder *)buildSpeed:(float)value;
- (OSZCharacterBuilder *)buildPower:(float)value;


@end
