//
//  OSZConsoleEmulatorChild1.m
//  demo
//
//  Created by Mac on 2017/4/20.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZRobot1.h"

@implementation OSZRobot1

- (void)loadInstructionsForCommand:(ConsoleCommand)command
{
    NSLog(@"OSZRobot1 加载指令--%d",command);
}

- (void)executeInstructions
{
    NSLog(@"OSZRobot1 执行指令");
}

@end
