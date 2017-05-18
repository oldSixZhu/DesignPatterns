//
//  OSZSeventeenVC.m
//  demo
//
//  Created by Mac on 2017/5/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZSeventeenVC.h"
#import "OSZProviderProxy.h"

@interface OSZSeventeenVC ()

@end

@implementation OSZSeventeenVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    OSZProviderProxy *proxy = [OSZProviderProxy initProxy];
    [proxy getBook:@"书本"];
    [proxy getPen:@"钢笔"];
    //  它的运行过程是这样的:
    //1.判断OSZProviderProxy实例化对象是否能响应者两个方法,
    //2.不能,在崩溃前,runtime会做消息转发,向实例化对象发送methodSignatureForSelector消息,取得被转发的消息的正确方法签名
    //3.取得签名后,构造一个NSInvocation实例,使用forwardInvocation让代理对象把调用转发给其他对象
    
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
