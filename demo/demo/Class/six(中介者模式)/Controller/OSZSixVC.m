//
//  OSZSixVC.m
//  demo
//
//  Created by Mac on 2017/4/21.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZSixVC.h"
#import "OSZMediatorManager.h"
#import "OSZPlaneA.h"
#import "OSZPlaneB.h"
#import "OSZPlaneC.h"
#import "OSZSignalCar.h"

@interface OSZSixVC ()

@end

@implementation OSZSixVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    OSZMediatorManager *mediator = [[OSZMediatorManager alloc]init];
    
    OSZPlaneA *a = [[OSZPlaneA alloc]init];
    a.name = @"飞机a";
    a.location = CGPointMake(100, 100);
    a.mediator = mediator;
    
    OSZPlaneB *b = [[OSZPlaneB alloc]init];
    b.name = @"飞机b";
    b.location = CGPointMake(200, 200);
    b.mediator = mediator;
    
    OSZPlaneC *c = [[OSZPlaneC alloc]init];
    c.name = @"飞机c";
    c.location = CGPointMake(300, 300);
    c.mediator = mediator;
    
    //三者通过把自身的信息发送给中介者,
    //达到了互相联系但不互相引入头文件
    //若是互相引入头文件会越来越乱,方法也会重复
    //但是把处理逻辑都集中在了中介者身上,中介者就会变得复杂
    [a sendSelfLocation];
    [b sendSelfLocation];
    [c sendSelfLocation];
    
    [a getOtherLocation:b];//位置为{200, 200}
    [a getOtherLocation:c];//位置为{300, 300}
    
    [b getOtherLocation:a];//位置为{100, 100}
    [b getOtherLocation:c];//位置为{300, 300}
    
    [c getOtherLocation:a];//位置为{100, 100}
    [c getOtherLocation:b];//位置为{200, 200}
    
    //当我们继续扩展,加一个地勤信号车与三个飞机通讯的时候
    //只需要在中介者中改改就好了,很方便
    //扩展性很好
    OSZSignalCar *car = [[OSZSignalCar alloc]init];
    car.name = @"飞机b";
    car.location = CGPointMake(200, 200);
    car.mediator = mediator;
    
    [car sendSelfLocation];
    [car getOtherLocation:a];//位置为{100, 100}
    [car getOtherLocation:b];//位置为{200, 200}
    [car getOtherLocation:c];//位置为{300, 300}
}



@end
