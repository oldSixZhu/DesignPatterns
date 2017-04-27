//
//  OSZ_Wheel.m
//  demo
//
//  Created by Mac on 2017/4/26.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZWheel.h"

@implementation OSZWheel

- (void)acceptVisitor:(id<OSZVisitor>) visitor
{
    [visitor visitWheel:self];
}

@end
