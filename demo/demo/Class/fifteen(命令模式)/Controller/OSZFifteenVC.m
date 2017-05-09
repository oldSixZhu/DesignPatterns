//
//  OSZFifteenVC.m
//  demo
//
//  Created by Mac on 2017/5/2.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZFifteenVC.h"
#import "OSZDrawView.h"

@interface OSZFifteenVC ()

@property (nonatomic, weak) OSZDrawView *drawView;

@end

@implementation OSZFifteenVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    //NSUndoManager应用
    OSZDrawView *drawView = [[OSZDrawView alloc]initWithFrame:self.view.frame];
    self.drawView = drawView;
    [self.view addSubview:drawView];
    
    //NSInvocation应用
    [self invocationMethod];
    
    //所谓的"目标-动作"机制就是 目标(Target)与动作(Action)
    [self performSelector:@selector(invocationMethod)];
}

//命令模式是Cocoa Touch框架收录的模式之一
//NSInvocation与NSUndoManager和"目标-动作"机制是框架中对这个模式的典型应用
- (void)invocationMethod
{
    //NSInvocation;用来包装方法和对应的对象，它可以存储方法的名称，对应的对象，对应的参数,
    /*
     NSMethodSignature：签名：再创建NSMethodSignature的时候，必须传递一个签名对象，签名对象的作用：用于获取参数的个数和方法的返回值
     */
    //创建签名对象的时候不是使用NSMethodSignature这个类创建，而是方法属于谁就用谁来创建
    NSMethodSignature*signature = [OSZFifteenVC instanceMethodSignatureForSelector:@selector(sendMessageWithNumber:WithContent:)];
    //1、创建NSInvocation对象
    NSInvocation*invocation = [NSInvocation invocationWithMethodSignature:signature];
    invocation.target = self;
    //invocation中的方法必须和签名中的方法一致。
    invocation.selector = @selector(sendMessageWithNumber:WithContent:);
    /*第一个参数：需要给指定方法传递的值
     第一个参数需要接收一个指针，也就是传递值的时候需要传递地址*/
    //第二个参数：需要给指定方法的第几个参数传值
    NSString*number = @"13812345678";
    //注意：设置参数的索引时不能从0开始，因为0已经被self占用，1已经被_cmd占用
    [invocation setArgument:&number atIndex:2];
    NSString*number2 = @"哈哈哈";
    [invocation setArgument:&number2 atIndex:3];
    //2、调用NSInvocation对象的invoke方法
    //只要调用invocation的invoke方法，就代表需要执行NSInvocation对象中制定对象的指定方法，并且传递指定的参数
    [invocation invoke];
}

- (void)sendMessageWithNumber:(NSString*)number WithContent:(NSString*)content{
    NSLog(@"电话号%@,姓名%@",number,content);
}
@end
