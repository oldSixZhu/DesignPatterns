//
//  OSZ_Visitor.h
//  demo
//
//  Created by Mac on 2017/4/26.
//  Copyright © 2017年 OSZ. All rights reserved.
//
//访问者协议

#import <Foundation/Foundation.h>
@class OSZEngine,OSZWheel;

@protocol OSZVisitor <NSObject>

- (void)visitEngine:(OSZEngine *)engine;
- (void)visitWheel:(OSZWheel *)wheel;

@end
