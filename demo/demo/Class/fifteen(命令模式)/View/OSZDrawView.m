//
//  OSZDrawView.m
//  demo
//
//  Created by Mac on 2017/5/9.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZDrawView.h"

@implementation OSZDrawView

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
    self.linesCompleted = [[NSMutableArray alloc] init];
    [self setMultipleTouchEnabled:YES];
    
    [self becomeFirstResponder];
    
    CGFloat origin = 40;
    CGFloat W = (kScreenWidth - 4 * origin ) * 0.5;
    CGFloat H = 44;
    CGFloat X = origin;
    CGFloat Y = kScreenHeight - origin - H;
    CGRect rect = CGRectMake(X,Y,W,H);
    UIButton *undoBtn = [[UIButton alloc]initWithFrame:rect];
    [undoBtn setTitle:@"回退" forState:UIControlStateNormal];
    [undoBtn setBackgroundColor:[UIColor grayColor]];
    [undoBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    undoBtn.titleLabel.font = [UIFont systemFontOfSize:17];
    undoBtn.layer.cornerRadius = 5;
    undoBtn.layer.masksToBounds = YES;
    self.undoBtn = undoBtn;
    [self addSubview:undoBtn];
    [self.undoBtn addTarget:self action:@selector(undo) forControlEvents:UIControlEventTouchUpInside];
    
    X = 3 * origin + W;
    rect = CGRectMake(X,Y,W,H);
    UIButton *redoBtn = [[UIButton alloc]initWithFrame:rect];
    [redoBtn setTitle:@"前进" forState:UIControlStateNormal];
    [redoBtn setBackgroundColor:[UIColor grayColor]];
    [redoBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    redoBtn.titleLabel.font = [UIFont systemFontOfSize:17];
    redoBtn.layer.cornerRadius = 5;
    redoBtn.layer.masksToBounds = YES;
    self.undoBtn = redoBtn;
    [self addSubview:redoBtn];
    [self.undoBtn addTarget:self action:@selector(redo) forControlEvents:UIControlEventTouchUpInside];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetLineWidth(context, 5.0);
    CGContextSetLineCap(context, kCGLineCapRound);
    for (OSZLine *line in self.linesCompleted) {
        [[line color] set];
        CGContextMoveToPoint(context, [line begin].x, [line begin].y);
        CGContextAddLineToPoint(context, [line end].x, [line end].y);
        CGContextStrokePath(context);
    }
}

//回退
- (void)undo
{
    if ([self.undoManager canUndo]) {
        [self.undoManager undo];
    }
}

//前进
- (void)redo
{
    if ([self.undoManager canRedo]) {
        [self.undoManager redo];
    }
}

//NSUndoManager 的实现原理是它作为一个记录器，每次数据变化，我们要用这个记录器记录一个相反的操作，
//当需要undo的时候，它通过执行这个相反的操作就可以实现了。
- (void)addLine:(OSZLine*)line
{
    [[self.undoManager prepareWithInvocationTarget:self] removeLine:line];
    [self.linesCompleted addObject:line];
    [self setNeedsDisplay];
}

- (void)removeLine:(OSZLine*)line
{
    if ([self.linesCompleted containsObject:line]) {
        [[self.undoManager prepareWithInvocationTarget:self] addLine:line];
        [self.linesCompleted removeObject:line];
        [self setNeedsDisplay];
    }
}

- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    for (UITouch *t in touches)
    {
        CGPoint loc = [t locationInView:self];
        self.currentLine.end = loc;
        
        if (self.currentLine)
        {
            [self addLine:self.currentLine];
        }
        OSZLine *newLine = [[OSZLine alloc] init];
        newLine.begin = loc;
        newLine.end = loc;
        self.currentLine = newLine;
    }
}



- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    //NSUndoManager有一个分组的概念，就是为了解决这类问题的
    //将所有的笔画放在一个组中
    [self.undoManager beginUndoGrouping];
    for (UITouch *t in touches) {
        // Create a line for the value
        CGPoint loc = [t locationInView:self];
        OSZLine *newLine = [[OSZLine alloc] init];
        newLine.begin = loc;
        newLine.end = loc;
        self.currentLine = newLine;
    }
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self setNeedsDisplay];
    [self.undoManager endUndoGrouping];
}



@end
