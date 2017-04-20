//
//  OSZConsole.h
//  demo
//
//  Created by Mac on 2017/4/20.
//  Copyright © 2017年 OSZ. All rights reserved.
//
//  控制器

#import <Foundation/Foundation.h>
#import "ConsoleCommands.h"
#import "OSZRobot.h"


@interface OSZConsole : NSObject

@property (nonatomic, strong) OSZRobot *robot;

//OSZConsole代表对OSZRobot实现的一种抽象
//OSZConsole就是抽象类,OSZRobot就是实现类
//抽象类层次结构的变化不会影响实现类层次结构的变化
//就是所谓的"从实现中把抽象分离出来而又要让它们联系在一起"


//只是命令机器人调用方法,并不是具体的控制器
//目的是完成控制器与机器人的桥接
- (void)sendCommand:(ConsoleCommand)command;

@end
