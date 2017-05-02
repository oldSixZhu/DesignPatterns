//
//  OSZFourteenVC.m
//  demo
//
//  Created by Mac on 2017/5/2.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZFourteenVC.h"
#import "OSZFourteenView.h"
#import "OSZFourteenVC2.h"

@interface OSZFourteenVC ()


@end

@implementation OSZFourteenVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    OSZFourteenView *view14 = [[OSZFourteenView alloc]init];
    self.view = view14;
    
    view14.lbl.text = @"第一个控制器";
    [view14.btn setTitle:@"跳到第二个控制器" forState:UIControlStateNormal];
    [view14.btn addTarget:self action:@selector(turn) forControlEvents:UIControlEventTouchUpInside];
}

- (void)turn
{
    [self presentViewController:[[OSZFourteenVC2 alloc]init] animated:YES completion:nil];
}

@end
