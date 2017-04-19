//
//  OSZOneModelAdapter.m
//  demo
//
//  Created by Mac on 2017/4/19.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZOneModelAdapter.h"
#import "OSZOneModel.h"

@implementation OSZOneModelAdapter


- (NSString *)setLabelStr
{
    OSZOneModel *model = self.data;
    
    return model.lblOneStr;
}

- (NSString *)setButtonStr
{
    OSZOneModel *model = self.data;
    
    return model.btnOneStr;
}


@end
