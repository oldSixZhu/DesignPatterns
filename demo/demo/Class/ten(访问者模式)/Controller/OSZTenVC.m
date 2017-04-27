//
//  OSZTenVC.m
//  demo
//
//  Created by Mac on 2017/4/26.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZTenVC.h"
#import "OSZCars.h"
#import "OSZEngine.h"
#import "OSZWheel.h"
#import "OSZRepairman.h"

@interface OSZTenVC ()

@end

@implementation OSZTenVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    
    OSZEngine *engine1 = [[OSZEngine alloc]init];
    engine1.name = @"引擎1号";
    
    OSZWheel *wheel1 = [[OSZWheel alloc]init];
    wheel1.name = @"轮胎1";
    OSZWheel *wheel2 = [[OSZWheel alloc]init];
    wheel2.name = @"轮胎2";
    OSZWheel *wheel3 = [[OSZWheel alloc]init];
    wheel3.name = @"轮胎3";
    OSZWheel *wheel4 = [[OSZWheel alloc]init];
    wheel4.name = @"轮胎4";
    
    OSZCars *car = [[OSZCars alloc]init];
    car.engine = engine1;
    [car addWheels:wheel1 atIndex:0];
    [car addWheels:wheel2 atIndex:1];
    [car addWheels:wheel3 atIndex:2];
    [car addWheels:wheel4 atIndex:3];
    
    NSLog(@"%@",car.engine.name);
    //引擎1号
    [car.wheels enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        OSZWheel *wheel = obj;
        NSLog(@"%@",wheel.name);
    }];
    //轮胎1
    //轮胎2
    //轮胎3
    //轮胎4
    
    //访问者
    OSZRepairman *man = [[OSZRepairman alloc]init];
    [car acceptVisitor:man];
    //修理工正在对引擎1号升级
    //修理工正在对轮胎1升级
    //修理工正在对轮胎2升级
    //修理工正在对轮胎3升级
    //修理工正在对轮胎4升级
}

@end



