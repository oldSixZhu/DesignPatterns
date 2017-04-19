//
//  OSZTwoModelAdapter.m
//  demo
//
//  Created by Mac on 2017/4/19.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZTwoModelAdapter.h"
#import "OSZTwoModel.h"

@implementation OSZTwoModelAdapter


- (NSString *)setLabelStr
{
    OSZTwoModel *model = self.data;
    
    return model.lblTwoStr;
}

- (NSString *)setButtonStr
{
    OSZTwoModel *model = self.data;
    
    return model.btnTwoStr;
}


@end
