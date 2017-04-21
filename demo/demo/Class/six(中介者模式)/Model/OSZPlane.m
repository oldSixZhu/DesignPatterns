//
//  OSZPlane.m
//  demo
//
//  Created by Mac on 2017/4/21.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZPlane.h"

@implementation OSZPlane

- (void)sendSelfLocation
{
    [self.mediator getObjLocation:self];
}

- (void)getOtherLocation:(id)plane
{
//    NSLog(@"%@,我是%@,在%@",plane.name,self.name,NSStringFromCGPoint(self.location));
    NSString *location = [self.mediator sendObjLocation:plane];
    NSLog(@"位置为%@",location);
}

@end
