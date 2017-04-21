//
//  OSZCar.m
//  demo
//
//  Created by Mac on 2017/4/21.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZSignalCar.h"

@implementation OSZSignalCar

- (void)sendSelfLocation
{
    [self.mediator getObjLocation:self];
}

- (void)getOtherLocation:(id)car
{
    //    NSLog(@"%@,我是%@,在%@",plane.name,self.name,NSStringFromCGPoint(self.location));
    NSString *location = [self.mediator sendObjLocation:car];
    NSLog(@"位置为%@",location);
}

@end
