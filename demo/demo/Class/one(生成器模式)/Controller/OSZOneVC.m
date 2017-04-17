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
    
    OSZStandardCharacterBuilder *characterBuilder = [[OSZStandardCharacterBuilder alloc]init];
    
    OSZBuildRole *role = [[OSZBuildRole alloc]init];
    
    OSZCharacter *player = [role createPlayer:characterBuilder];
    OSZCharacter *boss = [role createBoss:characterBuilder];
    
    NSLog(@"%@\n%@",player,boss);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
