//
//  OSZSingleton.h
//  demo
//
//  Created by Mac on 2017/4/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "singleton.h"

@interface OSZSingleton : NSObject

@property (nonatomic, copy) NSString *name;

//使用宏
singleton_h(OSZSingleton)

//+ (OSZSingleton *)sharedOSZSingleton;


@end
