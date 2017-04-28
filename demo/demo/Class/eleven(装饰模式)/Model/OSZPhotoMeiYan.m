//
//  OSZPhotoMeiYan.m
//  demo
//
//  Created by Mac on 2017/4/27.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZPhotoMeiYan.h"

@implementation OSZPhotoMeiYan
- (id)initWithPhoto:(id<OSZPhotoProtocol>)photos
{
//    另一种实现方式,把自己当做图片处理,而不是持有一个图片加工
//    self = photos;
//    self.beauty += 100;
//    return self;
    if (self = [super initWithPhoto:photos])
    {
        self.photo = photos;
    }
    return self;
}

- (void)show
{
    self.photo.beauty += 100;
    NSLog(@"漂亮等级%d,宽%d,高%d",self.photo.beauty,self.photo.width,self.photo.height);
}

@end

//赋值的 时候调用set方法，如self.age = 18;//在等号左边，即左值时调用
//取值的时候调用get方法，如age ＝ self.age;//等号右边或者运算、输出时

