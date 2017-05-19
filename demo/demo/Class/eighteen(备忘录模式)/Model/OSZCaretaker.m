//
//  OSZCaretaker.m
//  demo
//
//  Created by Mac on 2017/5/19.
//  Copyright © 2017年 OSZ. All rights reserved.
//


#import "OSZCaretaker.h"

@implementation OSZCaretaker


- (void)setMemo:(OSZMemo *)memo
{
    //归档
    //1:准备路径
    NSString *path = NSHomeDirectory();
    path = [path stringByAppendingString:@"memo.plist"];
    //2:准备存储数据对象(用可变数组进行接收)
    NSMutableData *data = [NSMutableData new];
    //3:创建归档对象
    NSKeyedArchiver *archiver = [[NSKeyedArchiver alloc]initForWritingWithMutableData:data];
    //4:开始归档
    [archiver encodeObject:memo forKey:@"caretaker"];
    //5:完成归档
    [archiver finishEncoding];
    //6:写入文件
    BOOL result = [data writeToFile:path atomically:YES];
    if (result) {
        NSLog(@"归档成功:%@",path);
    }
}

- (OSZMemo *)memo
{
    //反归档
    //1:获取解档路径
    NSString *path = NSHomeDirectory();
    path = [path stringByAppendingString:@"memo.plist"];
    NSData *MyData = [NSData dataWithContentsOfFile:path];
    //2:创建反归档对象
    NSKeyedUnarchiver  *unarchiver= [[NSKeyedUnarchiver alloc]initForReadingWithData:MyData];
    //3:反归档
    OSZMemo *memo = [[OSZMemo alloc]init];
    memo = [unarchiver decodeObjectForKey:@"caretaker"];
    //4:结束归档
    [unarchiver finishDecoding];
    NSLog(@"%@,%@",memo.name,memo.number);
    
    return memo;
}







@end
