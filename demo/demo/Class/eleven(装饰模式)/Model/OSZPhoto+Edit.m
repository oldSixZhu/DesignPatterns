//
//  OSZPhoto+Edit.m
//  demo
//
//  Created by Mac on 2017/4/28.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZPhoto+Edit.h"

@implementation OSZPhoto (Edit)

- (instancetype)showWithEdit
{
    self.width += 100;
    self.height += 100;
    NSLog(@"漂亮等级%d,宽%d,高%d",self.beauty,self.width,self.height);
    return self;
}

@end
