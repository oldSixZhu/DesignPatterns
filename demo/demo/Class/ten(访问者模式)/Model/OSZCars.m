//
//  OSZ_Car.m
//  demo
//
//  Created by Mac on 2017/4/26.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZCars.h"

@implementation OSZCars

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.wheels = [NSMutableArray array];
    }
    return self;
}

-(void)addWheels:(OSZWheel *)wheel atIndex:(NSUInteger)index
{
    [self.wheels insertObject:wheel atIndex:index];
}

- (void)acceptVisitor:(id<OSZVisitor>)visitor
{
    [self.engine acceptVisitor:visitor];
    for (OSZWheel *wheel in self.wheels)
    {
        [wheel acceptVisitor:visitor];
    }
}


@end
