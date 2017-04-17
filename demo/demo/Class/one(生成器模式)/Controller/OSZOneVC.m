//
//  OSZOneVC.m
//  demo
//
//  Created by Mac on 2017/4/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZOneVC.h"
#import "OSZCharacter.h"
#import "OSZStandardCharacterBuilder.h"
#import "OSZBuildRole.h"


@interface OSZOneVC ()

@end

@implementation OSZOneVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor redColor];
    
    //生成器
    OSZStandardCharacterBuilder *characterBuilder = [[OSZStandardCharacterBuilder alloc]init];
    //指导者
    OSZBuildRole *role = [[OSZBuildRole alloc]init];
    //产品
    OSZCharacter *player = [role createPlayer:characterBuilder];
    OSZCharacter *boss = [role createBoss:characterBuilder];
    
    NSLog(@"%@\n%@",player,boss);
}












@end
