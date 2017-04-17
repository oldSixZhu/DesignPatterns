//
//  OSZTwoVC.m
//  demo
//
//  Created by Mac on 2017/4/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZTwoVC.h"
#import "OSZSingleton.h"

@interface OSZTwoVC ()

@end

@implementation OSZTwoVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    OSZSingleton *cat1 = [[OSZSingleton alloc]init];
//    NSLog(@"%lu",(unsigned long)cat1.retainCount);
    cat1.name = @"猫猫";
    NSLog(@"%@",cat1.name);
//    [cat1 release];
//    NSLog(@"%lu",(unsigned long)cat1.retainCount);
    
    OSZSingleton *cat2 = [[OSZSingleton alloc]init];
    NSLog(@"%@",cat2.name);
    //无论我们创建多少次对象,都是猫猫
}



@end
