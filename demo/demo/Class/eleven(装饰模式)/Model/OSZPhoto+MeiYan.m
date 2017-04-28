//
//  OSZPhoto+MeiYan.m
//  demo
//
//  Created by Mac on 2017/4/28.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZPhoto+MeiYan.h"

@implementation OSZPhoto (MeiYan)

- (instancetype)showWithMeiYan
{
    self.beauty += 100;
    NSLog(@"漂亮等级%d,宽%d,高%d",self.beauty,self.width,self.height);
    return self;
}

@end
