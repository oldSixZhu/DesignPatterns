//
//  OSZPenProvider.h
//  demo
//
//  Created by Mac on 2017/5/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol OSZPenProviderProtocol <NSObject>

- (void)getPen:(NSString *)bookTitle;

@end


@interface OSZPenProvider : NSObject<OSZPenProviderProtocol>

@end
