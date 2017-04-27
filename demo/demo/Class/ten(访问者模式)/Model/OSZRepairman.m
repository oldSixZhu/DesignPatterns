//
//  OSZ_Repairman.m
//  demo
//
//  Created by Mac on 2017/4/26.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZRepairman.h"
#import "OSZEngine.h"
#import "OSZWheel.h"

@implementation OSZRepairman

-(void)visitEngine:(OSZEngine *)engine
{
    NSLog(@"修理工正在对%@升级",engine.name);
}

-(void)visitWheel:(OSZWheel *)wheel
{
    NSLog(@"修理工正在对%@升级",wheel.name);
}

@end
