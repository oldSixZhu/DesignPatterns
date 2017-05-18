//
//  OSZThirdProxy.m
//  demo
//
//  Created by Mac on 2017/5/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZProviderProxy.h"
#import <objc/runtime.h>


@interface OSZProviderProxy ()

@property (nonatomic, strong) OSZBookProvider *bookProvider;

@property (nonatomic, strong) OSZPenProvider *penProvider;

@property (nonatomic, strong) NSMutableDictionary *methodsDic;

@end

@implementation OSZProviderProxy

+ (instancetype)initProxy
{
    //NSProxy类是没有init方法的,它是一个虚基类
    return [[OSZProviderProxy alloc]init];
}


- (instancetype)init{
    self.methodsDic = [NSMutableDictionary dictionary];
    self.bookProvider = [[OSZBookProvider alloc] init];
    self.penProvider = [[OSZPenProvider alloc] init];
    
    //映射target及其对应方法名
    [self _registerMethodsWithTarget:self.bookProvider];
    [self _registerMethodsWithTarget:self.penProvider];
    
    return self;
}

- (void)_registerMethodsWithTarget:(id )target{
    
    unsigned int numberOfMethods = 0;
    
    //获取target方法列表
    Method *method_list = class_copyMethodList([target class], &numberOfMethods);
    
    for (int i = 0; i < numberOfMethods; i ++) {
        //获取方法名并存入字典
        Method temp_method = method_list[i];
        SEL temp_sel = method_getName(temp_method);
        const char *temp_method_name = sel_getName(temp_sel);
        [self.methodsDic setObject:target forKey:[NSString stringWithUTF8String:temp_method_name]];
    }
    
    free(method_list);
}


//方法签名
- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel{
    //获取选择子方法名
    NSString *methodName = NSStringFromSelector(sel);
    
    //在字典中查找对应的target
    id target = self.methodsDic[methodName];
    
    //检查target
    if (target && [target respondsToSelector:sel]) {
        return [target methodSignatureForSelector:sel];
    } else {
        return [super methodSignatureForSelector:sel];
    }
}

//执行
- (void)forwardInvocation:(NSInvocation *)invocation{
    //获取当前选择方法 
    SEL sel = invocation.selector;
    
    //获取选择子方法名
    NSString *methodName = NSStringFromSelector(sel);
    
    //在字典中查找对应的target
    id target = self.methodsDic[methodName];
    
    //检查target
    if (target && [target respondsToSelector:sel]) {
        [invocation invokeWithTarget:target];
    } else {
        [super forwardInvocation:invocation];
    }
}

@end
