//
//  OSZCharacter.h
//  demo
//
//  Created by Mac on 2017/4/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//



#import <Foundation/Foundation.h>

@interface OSZCharacter : NSObject
//任何一个角色都有的基本属性

//身高,影响血量
@property (nonatomic, assign) float height;
//体重,影响血量
@property (nonatomic, assign) float weight;
//血量
@property (nonatomic, assign) float blood;
//速度,影响攻击力
@property (nonatomic, assign) float speed;
//力量,影响攻击力
@property (nonatomic, assign) float power;
//攻击力
@property (nonatomic, assign) float attack;

@end
