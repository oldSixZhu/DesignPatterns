//
//  OSZThreeView.h
//  demo
//
//  Created by Mac on 2017/4/19.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OSZViewAdapterProtocol.h"

@interface OSZThreeView : UIView

//lbl内容
@property (nonatomic, copy) NSString *lblStr;

//按钮内容
@property (nonatomic, copy) NSString *btnStr;

//数据
- (void)loadData:(id<OSZViewAdapterProtocol>)data;

@end
