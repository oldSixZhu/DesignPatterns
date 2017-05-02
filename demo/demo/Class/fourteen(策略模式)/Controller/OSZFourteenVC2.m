//
//  OSZFourteenVC2.m
//  demo
//
//  Created by Mac on 2017/5/2.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZFourteenVC2.h"
#import "OSZFourteenView.h"
#import "OSZFourteenVC.h"

@interface OSZFourteenVC2 ()

@end

@implementation OSZFourteenVC2

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    OSZFourteenView *view14 = [[OSZFourteenView alloc]init];
    self.view = view14;
    
    view14.lbl.text = @"第二个控制器";
    [view14.btn setTitle:@"跳到第一个控制器" forState:UIControlStateNormal];
    [view14.btn addTarget:self action:@selector(turn) forControlEvents:UIControlEventTouchUpInside];
}

- (void)turn
{
    [self dismissViewControllerAnimated:YES completion:nil];
}


@end
