//
//  OSZCabDriver.m
//  demo
//
//  Created by Mac on 2017/4/21.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZCabDriver.h"

@implementation OSZCabDriver

- (void)driveToLocation:(CGPoint)x
{
    //启动计价器
    OSZTaximeter *meter = [[OSZTaximeter alloc]init];
    [meter start];
    //操作车辆到达指定位置
    OSZCar *car = [[OSZCar alloc]init];
    [car fire];
    [car changeGears];
    [car changeGears];
    //到达位置,停车
    NSLog(@"到达%@", NSStringFromCGPoint(x));
    [car brakes];
    //停止计价器
    [meter stop];
}

@end
