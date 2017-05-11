//
//  OSZFlowerFactory.h
//  demo
//
//  Created by Mac on 2017/5/11.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSZFlower.h"

@interface OSZFlowerFactory : NSObject

//缓存池
@property (nonatomic, strong) NSMutableDictionary *flowerPool;
//根据花的类型创建花
- (OSZFlower *)flowerViewWithType:(FlowerType)type;


@end
