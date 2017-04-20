//
//  OSZConsoleEmulatorChild2.m
//  demo
//
//  Created by Mac on 2017/4/20.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZRobot2.h"

@implementation OSZRobot2

- (void)loadInstructionsForCommand:(ConsoleCommand)command
{
    NSLog(@"OSZRobot2 加载指令--%d",command);
}

- (void)executeInstructions
{
    NSLog(@"OSZRobot2 执行指令");
}

@end
