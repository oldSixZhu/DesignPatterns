//
//  OSZ_Wheel.h
//  demo
//
//  Created by Mac on 2017/4/26.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSZVisitor.h"

@interface OSZWheel : NSObject

@property (nonatomic, assign) CGFloat size;
@property (nonatomic, copy) NSString *name;

//接收访问者修改
- (void)acceptVisitor:(id<OSZVisitor>)visitor;

@end
