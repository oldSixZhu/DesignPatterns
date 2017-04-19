//
//  OSZThreeVC.m
//  demo
//
//  Created by Mac on 2017/4/18.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZThreeVC.h"

#import "OSZOneModel.h"
#import "OSZTwoModel.h"
#import "OSZThreeView.h"
//类适配器
#import "OSZOneModelAdapter.h"
#import "OSZTwoModelAdapter.h"
//对象适配器
#import "OSZModelAdapter.h"

@interface OSZThreeVC ()

@end

@implementation OSZThreeVC


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self setupUI1];
//    [self setupUI2];
}

//    类适配器
- (void)setupUI1
{
    //第一种数据
    //获取数据,一般是网络请求的成功回调,这里就假数据了
    OSZOneModel *oneModel = [[OSZOneModel alloc]init];
    oneModel.lblOneStr = @"qweqweqwe";
    oneModel.btnOneStr = @"btn1";
    //处理数据
    OSZOneModelAdapter *modelAda1 = [[OSZOneModelAdapter alloc]initWithData:oneModel];
    //创建ui
    OSZThreeView *threeView1 = [[OSZThreeView alloc]initWithFrame:CGRectMake(100, 100, 200, 30)];
    //加载适配器的数据
    [threeView1 loadData:modelAda1];
    [self.view addSubview:threeView1];
    
    
    //第二种数据
    OSZTwoModel *twoModel = [[OSZTwoModel alloc]init];
    twoModel.lblTwoStr = @"asdfadfasdf";
    twoModel.btnTwoStr = @"btn2";
    OSZTwoModelAdapter *modelAda2 = [[OSZTwoModelAdapter alloc]initWithData:twoModel];
    OSZThreeView *threeView2 = [[OSZThreeView alloc]initWithFrame:CGRectMake(80, 180, 250, 30)];
    [threeView2 loadData:modelAda2];
    [self.view addSubview:threeView2];
}

//对象适配器
-(void)setupUI2
{
    //第一种数据
    OSZOneModel *oneModel = [[OSZOneModel alloc]init];
    oneModel.lblOneStr = @"zxcvcvzxcv";
    oneModel.btnOneStr = @"btn1";
    //对象适配器
    OSZModelAdapter *modelAda1 = [[OSZModelAdapter alloc]initWithData:oneModel];
    OSZThreeView *threeView1 = [[OSZThreeView alloc]initWithFrame:CGRectMake(100, 100, 200, 30)];
    [threeView1 loadData:modelAda1];
    [self.view addSubview:threeView1];
    
    //第二种数据
    OSZTwoModel *twoModel = [[OSZTwoModel alloc]init];
    twoModel.lblTwoStr = @"uioujiouio";
    twoModel.btnTwoStr = @"btn2";
    //此处不用更换适配器了
    OSZModelAdapter *modelAda2 = [[OSZModelAdapter alloc]initWithData:twoModel];
    OSZThreeView *threeView2 = [[OSZThreeView alloc]initWithFrame:CGRectMake(80, 180, 250, 30)];
    [threeView2 loadData:modelAda2];
    [self.view addSubview:threeView2];
}


@end













