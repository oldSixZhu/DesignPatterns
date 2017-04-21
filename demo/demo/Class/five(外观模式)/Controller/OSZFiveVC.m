//
//  OSZFiveVC.m
//  demo
//
//  Created by Mac on 2017/4/21.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZFiveVC.h"
#import "OSZCabDriver.h"

@interface OSZFiveVC ()

@end

@implementation OSZFiveVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blueColor];
    
    //我叫了个出租车,告诉出租车司机目的地即可
    OSZCabDriver *driver = [[OSZCabDriver alloc]init];
    [driver driveToLocation:CGPointMake(100, 100)];
//    开始计价
//    点火
//    换挡
//    换挡
//    到达{100, 100}
//    刹车
//    停止计价
}




@end
