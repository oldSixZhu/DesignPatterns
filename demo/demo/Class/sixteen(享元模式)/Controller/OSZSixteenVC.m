//
//  OSZSixteenVC.m
//  demo
//
//  Created by Mac on 2017/5/11.
//  Copyright © 2017年 OSZ. All rights reserved.
//


#import "OSZSixteenVC.h"
#import "OSZFlower.h"
#import "OSZFlowerFactory.h"

@interface OSZSixteenVC ()

@end

@implementation OSZSixteenVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    //创建保存花朵的数组
    NSMutableArray *flowers = [[NSMutableArray alloc]init];
    OSZFlowerFactory *factory = [[OSZFlowerFactory alloc]init];
    
    for (int i = 0; i < 1000000; i++)
    {
        //创建大量随机的花
        FlowerType flowerType = arc4random_uniform(AllTypesCount);
        
        //正常创建对象  100w:58m  500w:184m
//        OSZFlower *flower = [[OSZFlower alloc]init];
        
        //使用有缓存池的工厂方法  100w:25m  500w:峰值74m,稳定25m
        OSZFlower *flower = [factory flowerViewWithType:flowerType];

        [flowers addObject:flower];
        
    }
    
    FlowerType fl = AllTypesCount;
    NSLog(@"%lu",(unsigned long)fl);
    
    NSLog(@"%lu",(unsigned long)flowers.count);
}

@end
