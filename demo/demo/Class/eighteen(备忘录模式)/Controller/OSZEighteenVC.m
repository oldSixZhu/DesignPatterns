//
//  OSZEighteenVC.m
//  demo
//
//  Created by Mac on 2017/5/19.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZEighteenVC.h"
#import "OSZMemo.h"
#import "OSZCaretaker.h"
#import "OSZPerson.h"

@interface OSZEighteenVC ()

@end

@implementation OSZEighteenVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
  
//    这个模式有三个关键角色：原发器（Originator）、备忘录(Memento)、看管人（caretaker）。三者的基本关系是：原发器创建一个包含其状态的备忘录，并传给看管人。看管人不知道如何与备忘录交互，但会把备忘录放在一个安全之处保管好。
    
    //原发器不知道这个备忘录被如何保存,看管人不知道这个备忘录里面是什么
    
    //有一个人,想保存信息至备忘录
    OSZPerson *p = [[OSZPerson alloc]init];
    p.name = @"张三";
    p.number = @"13812345678";
    NSLog(@"%@,%@",p.name,p.number);
    
    //管理者管理这个人保存的备忘录,仅仅负责保存的功能
    OSZCaretaker *caretaker = [[OSZCaretaker alloc]init];
    //可以通过重写set方法,选择多种方式把通讯录保存,比如归档
    caretaker.memo = [p createMemo];
    
    //重新编辑他的信息
    p.name = @"李四";
    p.number = @"13700000000";
    NSLog(@"%@,%@",p.name,p.number);
    
    //回档
    [p resumeFromMemo:caretaker.memo];
    NSLog(@"%@,%@",p.name,p.number);
    /*
     -[OSZEighteenVC viewDidLoad]   张三,13812345678
     -[OSZCaretaker setMemo:]       归档成功:/Users/Mac/Library/Developer/CoreSimulator/Devices/0008B684-4C8A-44E9-AF68-9CDF558768AC/data/Containers/Data/Application/7104B870-E90B-455A-AA7B-B22E2870763Fmemo.plist
     -[OSZEighteenVC viewDidLoad]   李四,13700000000
     -[OSZCaretaker memo]           张三,13812345678
     -[OSZEighteenVC viewDidLoad]   张三,13812345678
     */
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
