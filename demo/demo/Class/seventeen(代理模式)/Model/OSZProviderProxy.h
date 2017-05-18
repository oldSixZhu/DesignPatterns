//
//  OSZThirdProxy.h
//  demo
//
//  Created by Mac on 2017/5/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSZBookProvider.h"
#import "OSZPenProvider.h"

@interface OSZProviderProxy : NSProxy<OSZBookProviderProtocol,OSZPenProviderProtocol>

+ (instancetype)initProxy;

@end
