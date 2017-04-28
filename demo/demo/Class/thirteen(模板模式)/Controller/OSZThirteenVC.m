//
//  OSZThirteenVC.m
//  demo
//
//  Created by Mac on 2017/4/28.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZThirteenVC.h"
#import "OSZChineseFood.h"
#import "OSZWesternFood.h"

@interface OSZThirteenVC ()

@end

@implementation OSZThirteenVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    NSLog(@"%s\n--adfaf--",__FUNCTION__);
    
    OSZChineseFood *c = [[OSZChineseFood alloc]init];
    [c make];
    //做主食
    //做肉
    //炒个菜
    
    OSZWesternFood *w = [[OSZWesternFood alloc]init];
    [w make];
    //做主食
    //煎个牛排
    //做菜
}

@end
