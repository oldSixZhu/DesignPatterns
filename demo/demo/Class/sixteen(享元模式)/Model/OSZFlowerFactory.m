//
//  OSZFlowerFactory.m
//  demo
//
//  Created by Mac on 2017/5/11.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZFlowerFactory.h"

@implementation OSZFlowerFactory

- (OSZFlower *)flowerViewWithType:(FlowerType)type
{
    //懒加载花朵池
    if (self.flowerPool == nil)
    {
        self.flowerPool = [[NSMutableDictionary alloc]initWithCapacity:AllTypesCount];
    }
    //先取一朵花
    OSZFlower *flower = [self.flowerPool objectForKey:[NSNumber numberWithInteger:type]];
    //取不到就根据类型创建一个并保存在池子中
    if (flower == nil)
    {
        //实例化并配置
        flower = [[OSZFlower alloc]init];
        switch (type) {
            case Type1:
                flower.flowerHead = @"红花";
                flower.flowerRod = @"绿杆";
                break;
            case Type2:
                flower.flowerHead = @"黄花";
                flower.flowerRod = @"绿杆";
                break;
            case Type3:
                flower.flowerHead = @"蓝花";
                flower.flowerRod = @"绿杆";
                break;
            default:
                break;
        }
        //存入缓存池
        [self.flowerPool setObject:flower forKey:[NSNumber numberWithUnsignedInteger:type]];
    }
    return flower;
}


@end
