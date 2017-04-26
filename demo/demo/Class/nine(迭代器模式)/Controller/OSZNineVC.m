//
//  OSZNineVC.m
//  demo
//
//  Created by Mac on 2017/4/25.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZNineVC.h"

@interface OSZNineVC ()

@end

@implementation OSZNineVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
//    [self test1];
//    [self test2];
//    [self test3];
    [self test4];
//    [self test5];
}

- (void)test1
{
    //1.数组迭代器
    NSArray *array = [NSArray arrayWithObjects:@1, @2, @3, @4, @5, nil];
    // 获取数组的正序迭代器
    NSEnumerator *enu1 = [array objectEnumerator];
    // 获取数组的反序迭代器
    NSEnumerator *enu2 = [array reverseObjectEnumerator];
    // 遍历数组
    id obj = nil;
    // 正序，获取下一个需要遍历的元素
    while (obj = [enu1 nextObject]) {
        NSLog(@"%@", obj);
    }
    // 反序，获取下一个需要遍历的元素
    while (obj = [enu2 nextObject]) {
        NSLog(@"%@", obj);
    }
}

- (void)test2
{
    //2.集合迭代器
    NSSet *set = [NSSet setWithObjects:@1, @2, @3, @4, @5, @6, @7, @6,nil];
    
    NSEnumerator *enu = [set objectEnumerator];
    
    id obj = nil;
    
    while (obj = [enu nextObject]) {
        NSLog(@"%@", obj);
    }
}

- (void)test3
{
    //3.字典迭代器
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1", @"value2", @"key2", nil];
    
    // key 迭代器
    NSEnumerator *keyEnumer = [dic keyEnumerator];
    
    id key = nil;
    while (key = [keyEnumer nextObject]) {
        NSLog(@"%@ = %@", key, [dic objectForKey:key]);
    }
    
    // 4.对象迭代器
    NSEnumerator *objEnumer = [dic objectEnumerator];
    
    id obj = nil;
    while (obj = [objEnumer nextObject]) {
        NSLog(@"%@", obj);
    }
}

- (void)test4
{
    //快速遍历
    NSArray *array = @[@"张三", @"李四", @"王五"];
    for (id item in array) {
        NSLog(@"%@", item);
    }
    
    //for循环
    for (int i = 0; i < array.count; i++)
    {
        NSLog(@"%@",array[i]);
    }
    
}

- (void)test5
{
    //基于块的枚举
    //数组
    NSArray *array = @[@"张三", @"李四", @"王五"];
    NSString *str = @"李四";
    [array enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"item is :%@", obj);
        
        if ([obj localizedStandardCompare:str] == NSOrderedSame) {
            *stop = YES;
            NSLog(@"停止遍历");
        }
    }];
    //字典
    NSDictionary *dic = [NSDictionary dictionaryWithObjectsAndKeys:@"value1", @"key1", @"value2", @"key2", nil];
    
    [dic enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        
        NSLog(@"item is :%@", obj);
        
    }];
    //set
    NSSet *set = [NSSet setWithObjects:@1, @2, @3, @4, @5, @6, @7, @6, nil];
    
    [set enumerateObjectsUsingBlock:^(id  _Nonnull obj, BOOL * _Nonnull stop) {
        
        NSLog(@"%@", obj);
        
    }];
}

@end
