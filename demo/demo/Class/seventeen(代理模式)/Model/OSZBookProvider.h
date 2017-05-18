//
//  OSZBookProvider.h
//  demo
//
//  Created by Mac on 2017/5/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol OSZBookProviderProtocol <NSObject>

- (void)getBook:(NSString *)bookTitle;

@end

@interface OSZBookProvider : NSObject<OSZBookProviderProtocol>

@end
