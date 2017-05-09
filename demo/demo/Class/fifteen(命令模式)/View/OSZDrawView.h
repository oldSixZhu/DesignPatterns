//
//  OSZDrawView.h
//  demo
//
//  Created by Mac on 2017/5/9.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OSZLine.h"

@interface OSZDrawView : UIView

@property (nonatomic) OSZLine *currentLine;
@property (nonatomic) NSMutableArray *linesCompleted;

//回退
@property (nonatomic, weak) UIButton *undoBtn;
//前进
@property (nonatomic, weak) UIButton *redoBtn;

- (void)undo;
- (void)redo;



@end
