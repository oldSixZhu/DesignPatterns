//
//  OSZ_Engine.m
//  demo
//
//  Created by Mac on 2017/4/26.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZEngine.h"

@implementation OSZEngine

- (void)acceptVisitor:(id<OSZVisitor>)visitor
{
    [visitor visitEngine:self];
}

@end
