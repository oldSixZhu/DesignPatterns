//
//  OSZTwelveVC.m
//  demo
//
//  Created by Mac on 2017/4/28.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZTwelveVC.h"
#import "OSZFireAttack.h"
#import "OSZIceAttack.h"
#import "OSZLightingAttack.h"
#import "OSZFireHandler.h"
#import "OSZIceHandler.h"
#import "OSZAvatar.h"


@interface OSZTwelveVC ()

@end

@implementation OSZTwelveVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    //创建一个人物,分配责任链
    OSZAvatar *handler1 = [[OSZAvatar alloc]init];
    //加火防御
    OSZFireHandler *handler2 = [[OSZFireHandler alloc]init];
    handler2.nextAttackHandler = handler1;
    //加冰防御
    OSZIceHandler *handler3 = [[OSZIceHandler alloc]init];
    handler3.nextAttackHandler = handler2;
    
    //开始攻击测试,选择最后一个责任链人物 先走冰防御,再走火防御
    //先用火
    OSZFireAttack *fire = [[OSZFireAttack alloc]init];
    [handler3 transmitAttack:fire];
    //我挡不住这个攻击
    //我拦截住了火攻击
    
    //再用冰
    OSZIceAttack *ice = [[OSZIceAttack alloc]init];
    [handler3 transmitAttack:ice];
    //我拦截住了冰攻击
    
    //再用电
    OSZLightingAttack *lighting = [[OSZLightingAttack alloc]init];
    [handler3 transmitAttack:lighting];
    //我挡不住这个攻击
    //我挡不住这个攻击
    //我被打到了🐰❄️
}
@end
