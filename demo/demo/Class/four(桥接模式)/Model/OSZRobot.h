//
//  OSZConsoleEmulator.h
//  demo
//
//  Created by Mac on 2017/4/20.
//  Copyright © 2017年 OSZ. All rights reserved.
//
//机器人

#import <Foundation/Foundation.h>
#import "ConsoleCommands.h"

@interface OSZRobot : NSObject

//根据命令加载指令到数据结构
- (void)loadInstructionsForCommand:(ConsoleCommand)command;
//执行指令
- (void)executeInstructions;

//其他方法

@end
