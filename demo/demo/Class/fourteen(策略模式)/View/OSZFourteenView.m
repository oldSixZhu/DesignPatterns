//
//  OSZFourteenView.m
//  demo
//
//  Created by Mac on 2017/5/2.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZFourteenView.h"

@implementation OSZFourteenView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    
    if (self)
    {
        [self setupUI];
    }
    
    return self;
}

- (void)setupUI
{
    self.backgroundColor = [UIColor whiteColor];
    
    CGRect rect = CGRectMake(100,100,150,30);
    UILabel *titleLbl = [[UILabel alloc]initWithFrame:rect];
    titleLbl.text = @"";
    titleLbl.textColor = [UIColor blackColor];
    titleLbl.font = [UIFont boldSystemFontOfSize:22];
    titleLbl.textAlignment = NSTextAlignmentCenter;
    [self addSubview:titleLbl];
    self.lbl = titleLbl;
    
    rect = CGRectMake(100,200,200,30);
    UIButton *button = [[UIButton alloc]initWithFrame:rect];
    [button setTitle:@"" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:22];
    [self addSubview:button];
    self.btn = button;
}


@end
