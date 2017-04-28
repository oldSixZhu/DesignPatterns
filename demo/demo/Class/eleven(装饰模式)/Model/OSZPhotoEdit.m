//
//  OSZPhotoEdit.m
//  demo
//
//  Created by Mac on 2017/4/27.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZPhotoEdit.h"

@implementation OSZPhotoEdit

- (id)initWithPhoto:(id<OSZPhotoProtocol>)photos
{
//    self = photos;
//    self.width += 100;
//    self.height += 100;
//    return self;
    if (self = [super initWithPhoto:photos])
    {
        self.photo = photos;
    }
    return self;
}


- (void)show
{
    self.photo.width += 100;
    self.photo.height += 100;
    NSLog(@"漂亮等级%d,宽%d,高%d",self.photo.beauty,self.photo.width,self.photo.height);
}


@end
