//
//  OSZFourVC.m
//  demo
//
//  Created by Mac on 2017/4/20.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZFourVC.h"

//两种机器人(电视机)
#import "OSZRobot1.h"
#import "OSZRobot2.h"
//控制器(遥控器)
#import "OSZRealConsole.h"

@interface OSZFourVC ()

@end

@implementation OSZFourVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //我想要一个遥控器能遥控两种机器人,而不是换遥控器
    //创建两个机器人
    OSZRobot1 *robot1 = [[OSZRobot1 alloc]init];
    OSZRobot2 *robot2 = [[OSZRobot2 alloc]init];
    
    OSZRealConsole *console = [[OSZRealConsole alloc]init];
    console.robot = robot1;
    [console up];
    //OSZRobot1 加载指令--0
    //OSZRobot1 执行指令
    
    console.robot = robot2;
    [console up];
    [console left];
    //OSZRobot2 加载指令--0
    //OSZRobot2 执行指令
    //OSZRobot2 加载指令--2
    //OSZRobot2 执行指令
}




@end
