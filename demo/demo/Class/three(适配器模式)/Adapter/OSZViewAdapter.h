//
//  OSZViewAdapter.h
//  demo
//
//  Created by Mac on 2017/4/19.
//  Copyright © 2017年 OSZ. All rights reserved.
//
//基本适配器

#import <Foundation/Foundation.h>
#import "OSZViewAdapterProtocol.h"

@interface OSZViewAdapter : NSObject<OSZViewAdapterProtocol>

//设立属性保存输入的数据
@property (nonatomic, weak) id data;

//保存输入数据
- (instancetype)initWithData:(id)data;

@end
