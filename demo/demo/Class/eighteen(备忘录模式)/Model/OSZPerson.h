//
//  OSZPerson.h
//  demo
//
//  Created by Mac on 2017/5/19.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSZMemo.h"

@interface OSZPerson : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *number;

//把信息保存至通讯录
- (OSZMemo *)createMemo;
//从通讯录提取保存的信息
- (void)resumeFromMemo:(OSZMemo *)memo;

@end
