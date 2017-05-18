//
//  OSZScribbleViewImageProxy.m
//  demo
//
//  Created by Mac on 2017/5/17.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZLoadmageProxy.h"

@interface OSZLoadmageProxy  ()

//保存加载后的真实图像
@property (nonatomic, weak) UIImage *realImage;
//用于控制转发真实图像的加载
@property (nonatomic, assign) BOOL loadingHasLaunched;

//在后台加载真正的图片
- (void)forwardImageLoading;

@end



@implementation OSZLoadmageProxy

//如果不需要对象显示在视图上,可以使用这个方法来转发真实图像的加载
-(UIImage *)image
{
    if (_realImage == nil)
    {
        UIImage *img = [[UIImage alloc]initWithContentsOfFile:self.imagePath];
        _realImage = img;
    }
    return _realImage;
}


- (void)drawRect:(CGRect)rect {
    
    //如果realImageView中没有真实图像,就绘制一幅空白图框,作为占位图像代理
    if (self.realImage == nil)
    {
        //绘制空白图框代码
        UIView *white = [[UIView alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
        white.backgroundColor = [UIColor blueColor];
        [self addSubview:white];
    }

    //如果没有进行加载,就启动一个线程进行加载真正的图像
    if (!self.loadingHasLaunched)
    {
        [self performSelectorInBackground:@selector(forwardImageLoading) withObject:nil];
        self.loadingHasLaunched = YES;
    }
    //如果加载实际内容了,就绘制
    else
    {
        [self.realImage drawInRect:rect];
    }
}

//加载真实图像
-(void)forwardImageLoading
{
    //转发给上面的方法
    [self image];
    //然后重新调用drawRect
    [self performSelectorInBackground:@selector(setNeedsDisplay) withObject:nil];
}

@end


















