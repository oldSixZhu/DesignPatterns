//
//  OSZMediatorManager.m
//  demo
//
//  Created by Mac on 2017/4/21.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZMediatorManager.h"
#import "OSZPlaneA.h"
#import "OSZPlaneB.h"
#import "OSZPlaneC.h"
#import "OSZSignalCar.h"

@implementation OSZMediatorManager

singleton_m(OSZMediatorManager)

- (void)getObjLocation:(id)obj
{
    if ([obj isKindOfClass:[OSZPlaneA class]])
    {
        self.planeA = obj;
    }
    else if ([obj isKindOfClass:[OSZPlaneB class]])
    {
        self.planeB = obj;
    }
    else if ([obj isKindOfClass:[OSZPlaneC class]])
    {
        self.planeC = obj;
    }
    else if ([obj isKindOfClass:[OSZSignalCar class]])
    {
        self.car = obj;
    }
    else
    {
        NSLog(@"不是管辖范围内的飞机");
    }
}

//可以选择有返回值的方法
- (NSString *)sendObjLocation:(id)obj
{
    if ([obj isKindOfClass:[OSZPlaneA class]])
    {
        NSString *location = NSStringFromCGPoint(self.planeA.location);
        return location;
    }
    else if ([obj isKindOfClass:[OSZPlaneB class]])
    {
        NSString *location = NSStringFromCGPoint(self.planeB.location);
        return location;
    }
    else if ([obj isKindOfClass:[OSZPlaneC class]])
    {
        NSString *location = NSStringFromCGPoint(self.planeC.location);
        return location;
    }
    else if ([obj isKindOfClass:[OSZSignalCar class]])
    {
        NSString *location = NSStringFromCGPoint(self.car.location);
        return location;
    }
    else
    {
        NSLog(@"不是管辖范围内的飞机");
        return 0;
    }
}


//- (id)sendPlane:(id)plane
//{
//    if ([plane isKindOfClass:[OSZPlaneA class]])
//    {
//        return self.planeA;
//    }
//    else if ([plane isKindOfClass:[OSZPlaneB class]])
//    {
//        return self.planeB;
//    }
//    else if ([plane isKindOfClass:[OSZPlaneC class]])
//    {
//        
//        return self.planeC;
//    }
//    else
//    {
//        NSLog(@"不是管辖范围内的飞机");
//        return 0;
//    }
//}

@end
