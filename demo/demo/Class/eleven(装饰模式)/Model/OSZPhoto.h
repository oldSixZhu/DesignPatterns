//
//  OSZPhoto.h
//  demo
//
//  Created by Mac on 2017/4/27.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSZPhotoProtocol.h"

@interface OSZPhoto : NSObject<OSZPhotoProtocol>

//保存图片
@property (nonatomic, strong) id<OSZPhotoProtocol> photo;


//处理图片的方法
- (id)initWithPhoto:(id<OSZPhotoProtocol>)photos;


@end
