//
//  OSZThreeView.m
//  demo
//
//  Created by Mac on 2017/4/19.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZThreeView.h"

@interface OSZThreeView ()

//文字
@property (nonatomic, weak) UILabel *lbl;
//按钮
@property (nonatomic, weak) UIButton *btn;

@end

@implementation OSZThreeView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        [self setupUI];
    }
    
    return self;
}

//仅仅设置ui
- (void)setupUI
{
    self.backgroundColor = [UIColor grayColor];
    
    CGRect rect = CGRectMake(2,2,100,25);
    UILabel *lbl = [[UILabel alloc]initWithFrame:rect];
    [lbl setBackgroundColor:[UIColor whiteColor]];
    self.lbl = lbl;
    [self addSubview:self.lbl];
    
    rect = CGRectMake(110, 5, 50, 20);
    UIButton *btn = [[UIButton alloc]initWithFrame:rect];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setBackgroundColor:[UIColor whiteColor]];
    self.btn = btn;
    [self addSubview:self.btn];
}

//用适配器给控件赋值,达到解耦的效果
-(void)loadData:(id<OSZViewAdapterProtocol>)data
{
    self.lbl.text = [data setLabelStr];
    [self.btn setTitle:[data setButtonStr] forState:UIControlStateNormal];
}

@end
