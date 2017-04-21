//
//  OSZCabDriver.h
//  demo
//
//  Created by Mac on 2017/4/21.
//  Copyright © 2017年 OSZ. All rights reserved.
//
//出租车司机作为"外观"

#import <Foundation/Foundation.h>
#import "OSZCar.h"
#import "OSZTaximeter.h"


@interface OSZCabDriver : NSObject
//目的地
- (void)driveToLocation:(CGPoint)x;

@end
