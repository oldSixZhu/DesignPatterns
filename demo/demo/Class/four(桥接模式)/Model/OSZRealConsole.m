//
//  OSZRealConsole.m
//  demo
//
//  Created by Mac on 2017/4/20.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZRealConsole.h"
#import "ConsoleCommands.h"

@implementation OSZRealConsole

//当我们发送指令的时候,由父类来统一实现,达到整合与复用,避免各子类混淆
//并由父类来根据机器人种类处理合适的指令
//我们可以创造多个子类,发出特定的功能指令
- (void)up
{
    [super sendCommand:up];
}
- (void)down
{
    [super sendCommand:down];
}
- (void)left
{
    [super sendCommand:left];
}
- (void)right
{
    [super sendCommand:right];
}

@end
