//
//  OSZPhotoProtocol.h
//  demo
//
//  Created by Mac on 2017/4/27.
//  Copyright © 2017年 OSZ. All rights reserved.
//

//该协议定义了一种图片数据结构
#import <Foundation/Foundation.h>

@protocol OSZPhotoProtocol <NSObject>

//漂亮等级
@property (nonatomic, assign) int beauty;
//宽高
@property (nonatomic, assign) int width;
@property (nonatomic, assign) int height;

//展示属性
- (void)show;

@end
