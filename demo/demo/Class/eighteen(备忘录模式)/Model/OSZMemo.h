//
//  OSZMemo.h
//  demo
//
//  Created by Mac on 2017/5/19.
//  Copyright © 2017年 OSZ. All rights reserved.
//
//备忘录

#import <Foundation/Foundation.h>

@interface OSZMemo : NSObject<NSCoding>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *number;

//便利构造器
- (instancetype)initWithName:(NSString *)name andPhoneNumber:(NSString *)number;


@end
