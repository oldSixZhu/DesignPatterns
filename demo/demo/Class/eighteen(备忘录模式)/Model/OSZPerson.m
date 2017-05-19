//
//  OSZPerson.m
//  demo
//
//  Created by Mac on 2017/5/19.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZPerson.h"

@implementation OSZPerson

- (OSZMemo *)createMemo
{
    return [[OSZMemo alloc]initWithName:self.name andPhoneNumber:self.number];
}

- (void)resumeFromMemo:(OSZMemo *)memo
{
    self.name = memo.name;
    self.number = memo.number;
}

@end
