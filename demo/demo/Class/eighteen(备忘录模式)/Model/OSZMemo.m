//
//  OSZMemo.m
//  demo
//
//  Created by Mac on 2017/5/19.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZMemo.h"

@implementation OSZMemo


- (instancetype)initWithName:(NSString *)name andPhoneNumber:(NSString *)number
{
    self.name = name;
    self.number = number;
    return self;
}

//归档
- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.number forKey:@"number"];
}



//解档
-(instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init])
    {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.number = [aDecoder decodeObjectForKey:@"number"];
    }
    return self;
}

@end
