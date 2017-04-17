//
//  OSZSingleton.m
//  demo
//
//  Created by Mac on 2017/4/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZSingleton.h"


@implementation OSZSingleton

//使用宏
singleton_m(OSZSingleton)

//static OSZSingleton *_singleton = nil;

//+ (OSZSingleton *)sharedOSZSingleton
//{
//    return [[self alloc] init];
//}

//直接重写allocWithZone,防止有人不明白此类为单例类
//alloc是用设为NULL的allocWithZone来调用的
//检查类的唯一实例是否已创建,如果没有,就创建新的实例并返回

//普通实现
//+(instancetype)allocWithZone:(struct _NSZone *)zone
//{
//    if (!_singleton)
//    {
//        _singleton = [super allocWithZone:zone];
//    }
//    return _singleton;
//}

//防止多线程访问,互斥锁
//+ (instancetype)allocWithZone:(struct _NSZone *)zone {
//    @synchronized (self) {
//        if (!_singleton) {
//            _singleton = [super allocWithZone:zone];
//        }
//    }
//    return _singleton;
//}

//或者GCD一次性执行函数
//+ (instancetype)allocWithZone:(struct _NSZone *)zone {
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        _singleton = [super allocWithZone:zone];
//    });
//    return _singleton;
//}

// 如果这个单例遵守了NSCopying和NSMutableCopying协议,
// 那么无论是使用copy方法还是mutableCopy方法, 都只会得到同一个实例对象
//- (id)copyWithZone:(NSZone *)zone {
//    return _singleton;
//}
//
//- (id)mutableCopyWithZone:(NSZone *)zone {
//    return _singleton;
//}

//MRC要重写以下四个方法
//- (instancetype)autorelease
//{
//    return _singleton;
//}
//
//- (instancetype)retain
//{
//    return _singleton;
//}
//
//- (oneway void)release
//{
//    
//}
//
//- (NSUInteger)retainCount
//{
//    return 1;
//}



@end











