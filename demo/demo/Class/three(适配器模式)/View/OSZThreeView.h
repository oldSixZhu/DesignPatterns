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


////lbl内容
//@property (nonatomic, copy) NSString *lblStr;
//
////按钮内容
//@property (nonatomic, copy) NSString *btnStr;

//有适配器给控件赋值,不用暴露属性加载数据了
- (void)loadData:(id<OSZViewAdapterProtocol>)data;

@end
