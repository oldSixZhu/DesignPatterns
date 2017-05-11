//
//  OSZFlower.h
//  demo
//
//  Created by Mac on 2017/5/11.
//  Copyright © 2017年 OSZ. All rights reserved.
//
typedef enum : NSUInteger {
    Type1,
    Type2,
    Type3,
    AllTypesCount,//巧妙显示枚举的长度
} FlowerType;

#import <Foundation/Foundation.h>

@interface OSZFlower : NSObject

//花头
@property (nonatomic, copy) NSString *flowerHead;
//花茎
@property (nonatomic, copy) NSString *flowerRod;

@end
