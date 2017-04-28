//
//  OSZPhoto.m
//  demo
//
//  Created by Mac on 2017/4/27.
//  Copyright © 2017年 OSZ. All rights reserved.
//

//装饰器根类
#import "OSZPhoto.h"

@implementation OSZPhoto

@synthesize beauty,width,height;

//错误信息如下：error：Cannot assign to 'self' outside of a method in the init family
//原因：只能在init方法中给self赋值，Xcode判断是否为init方法规则：方法返回id，并且名字以init+大写字母开头+其他为准则。

//概括来说，new和alloc/init在功能上几乎是一致的，分配内存并完成初始化 alloc:分配内存 init:初始化
//差别在于，采用new的方式只能采用默认的init方法完成初始化
//采用alloc的方式可以用其他定制的初始化方法

- (id)initWithPhoto:(id<OSZPhotoProtocol>)photos
{
    if (self = [super init])
    {
        self.photo  = photos;
    }
    return self;
}

- (void)show
{
    NSLog(@"漂亮等级%d,宽%d,高%d",self.photo.beauty,self.photo.width,self.photo.height);
}

@end
