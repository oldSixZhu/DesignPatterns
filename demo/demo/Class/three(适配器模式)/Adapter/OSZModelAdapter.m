//
//  OSZModelAdapter.m
//  demo
//
//  Created by Mac on 2017/4/19.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZModelAdapter.h"
#import "OSZOneModel.h"
#import "OSZTwoModel.h"

@implementation OSZModelAdapter

- (NSString *)setLabelStr
{
//    确定一个对象是否是当前类的成员
    if ([self.data isMemberOfClass:[OSZOneModel class]])
    {
        OSZOneModel *model = self.data;
        
        return model.lblOneStr;
    }
    else if ([self.data isMemberOfClass:[OSZTwoModel class]])
    {
        OSZTwoModel *model = self.data;
        
        return model.lblTwoStr;
    }
    else
    {
        return nil;
    }
}

- (NSString *)setButtonStr
{
    if ([self.data isMemberOfClass:[OSZOneModel class]])
    {
        OSZOneModel *model = self.data;
        
        return model.btnOneStr;
    }
    else if ([self.data isMemberOfClass:[OSZTwoModel class]])
    {
        OSZTwoModel *model = self.data;
        
        return model.btnTwoStr;
    }
    else
    {
        return nil;
    }
}

@end
