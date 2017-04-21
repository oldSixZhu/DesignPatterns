//
//  OSZPlane.h
//  demo
//
//  Created by Mac on 2017/4/21.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSZMediatorManager.h"

@interface OSZPlane : NSObject

//名字
@property (nonatomic, copy) NSString *name;
//位置
@property (nonatomic, assign) CGPoint location;
//中介者
@property (nonatomic, strong) OSZMediatorManager *mediator;

//告诉控制台(中介者)自己的位置
- (void)sendSelfLocation;
//从控制台(中介者)知道别人的位置
- (void)getOtherLocation:(id)plane;

@end
