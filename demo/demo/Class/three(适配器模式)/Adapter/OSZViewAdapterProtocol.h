//
//  OSZViewAdapterProtocol.h
//  demo
//
//  Created by Mac on 2017/4/19.
//  Copyright © 2017年 OSZ. All rights reserved.
//
//适配器协议
//视图控件的初始化数据接收一个遵守某个协议的数据

#import <Foundation/Foundation.h>
#import <UIKit/UIkit.h>

@protocol OSZViewAdapterProtocol <NSObject>

- (NSString *)setLabelStr;
- (NSString *)setButtonStr;

@end

