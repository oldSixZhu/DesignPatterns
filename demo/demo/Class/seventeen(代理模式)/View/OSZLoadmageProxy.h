//
//  OSZScribbleViewImageProxy.h
//  demo
//
//  Created by Mac on 2017/5/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//


#import <UIKit/UIKit.h>

@interface OSZLoadmageProxy : UIView

//真实图像路径
@property (nonatomic, copy) NSString *imagePath;
//图像
@property (nonatomic, weak) UIImage *image;

@end
