//
//  OSZConsole.m
//  demo
//
//  Created by Mac on 2017/4/20.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZConsole.h"

@implementation OSZConsole


- (void)sendCommand:(ConsoleCommand)command
{
    [self.robot loadInstructionsForCommand:command];
    [self.robot executeInstructions];    
}

@end
