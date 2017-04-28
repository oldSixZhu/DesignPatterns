//
//  OSZElevenVC.m
//  demo
//
//  Created by Mac on 2017/4/27.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZElevenVC.h"
#import "OSZPhoto.h"
#import "OSZPhotoMeiYan.h"
#import "OSZPhotoEdit.h"
#import "OSZPhoto+MeiYan.h"
#import "OSZPhoto+Edit.h"

@interface OSZElevenVC ()

@end

@implementation OSZElevenVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    
    //正常使用
    OSZPhoto *p1 = [[OSZPhoto alloc]init];
    p1.beauty = 100;
    p1.width = 100;
    p1.height = 100;
    p1.photo = p1;
    [p1 show];              //漂亮等级100,宽100,高100
    
    //1.通过真正的子类实现装饰模式
    //装饰1 美颜
    OSZPhotoMeiYan *p2 = [[OSZPhotoMeiYan alloc]initWithPhoto:p1];
    [p2 show];              //漂亮等级200,宽100,高100
    //装饰2 修改大小
    OSZPhotoEdit *p3 = [[OSZPhotoEdit alloc]initWithPhoto:p2.photo];
    [p3 show];              //漂亮等级200,宽200,高200
    
    //2.通过分类实现装饰模式
    //装饰1 美颜
    OSZPhoto *p4 = [p1 showWithMeiYan];    //漂亮等级300,宽200,高200
    //装饰2 修改大小
    OSZPhoto *p5 = [p4 showWithEdit];      //漂亮等级300,宽300,高300
    NSLog(@"%@",p5);
}

@end
