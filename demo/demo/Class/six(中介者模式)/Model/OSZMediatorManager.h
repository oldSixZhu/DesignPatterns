//
//  OSZMediatorManager.h
//  demo
//
//  Created by Mac on 2017/4/21.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "singleton.h"

//#import "OSZPlaneA.h"
//#import "OSZPlaneB.h"
//#import "OSZPlaneC.h"
@class OSZPlaneA;
@class OSZPlaneB;
@class OSZPlaneC;
@class OSZSignalCar;

@interface OSZMediatorManager : NSObject

//存储各飞机位置信息
@property (nonatomic, strong) OSZPlaneA *planeA;
@property (nonatomic, strong) OSZPlaneB *planeB;
@property (nonatomic, strong) OSZPlaneC *planeC;
@property (nonatomic, strong) OSZSignalCar *car;

//接收plane位置信息
- (void)getObjLocation:(id)obj;

//发送plane位置信息
- (NSString *)sendObjLocation:(id)obj;

////直接返回飞机的全部信息
//- (id)sendPlane:(id)plane;

//保证只有一个中介者
singleton_h(OSZMediatorManager)

@end
