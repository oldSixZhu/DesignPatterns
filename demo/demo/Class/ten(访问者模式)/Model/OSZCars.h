//
//  OSZ_Car.h
//  demo
//
//  Created by Mac on 2017/4/26.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSZEngine.h"
#import "OSZWheel.h"
#import "OSZVisitor.h"

@interface OSZCars : NSObject

@property (nonatomic, strong) OSZEngine *engine;
@property (nonatomic, strong) NSMutableArray *wheels;

- (void)addWheels:(OSZWheel *)wheel atIndex:(NSUInteger)index;

//该方法是在加入访问者后添加的
- (void)acceptVisitor:(id<OSZVisitor>)visitor;

@end
