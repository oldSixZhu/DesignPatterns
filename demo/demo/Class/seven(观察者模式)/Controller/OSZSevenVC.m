//
//  OSZSevenVC.m
//  demo
//
//  Created by Mac on 2017/4/24.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZSevenVC.h"

@interface OSZSevenVC ()<UITableViewDelegate>

@property (weak , nonatomic)UITableView *userVCTableView;
@property (weak , nonatomic)UIView      *alphaView;

@end

@implementation OSZSevenVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    //通知
    [self postNotification];
    
    //KVO
    [self setupUI];
    /* tableViewController 观察 tableView 的 contentOffset */
    [self.userVCTableView addObserver:self forKeyPath:@"contentOffset" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:@"JDUserVCContext"];
}
#pragma mark  ---- 通知 ----
- (void)postNotification
{
    NSNotification *notification = [NSNotification notificationWithName:@"nslog" object:self];
    NSNotificationCenter *center = [NSNotificationCenter defaultCenter];
 
    [center addObserver:self selector:@selector(nslog) name:@"nslog" object:self];
    
    [center postNotification:notification];
    
}

- (void)nslog
{
    NSLog(@"通知触发调用的方法");
}

#pragma mark  ---- KVO ----
-(void)dealloc{
    [self.userVCTableView removeObserver:self forKeyPath:@"contentOffset" context:@"JDUserVCContext"];
}
-(void)setupUI
{
    UITableView *tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    //保存tableview
    self.userVCTableView = tableView;
    self.userVCTableView.delegate = self;
    [self.view addSubview:self.userVCTableView];
    
    //头视图
    UIView *barView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, 64)];
    barView.backgroundColor = [UIColor clearColor];
    [self.view addSubview:barView];
    
    UIView *alphaView = [[UIView alloc]initWithFrame:barView.frame];
    alphaView.backgroundColor = [UIColor blueColor];
    alphaView.alpha = 0;
    self.alphaView = alphaView;
    [barView addSubview:alphaView];
}

//当观察者的观察对象的属性一发生变化时, 就调用这个方法
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
{
    if ([object isEqual:self.userVCTableView] && [keyPath isEqualToString:@"contentOffset"])
    {
        CGPoint offset = self.userVCTableView.contentOffset;
        /* 那么我先算出头视图的高度 */
        CGFloat cycleScrollViewHeight = kScreenWidth * 120 / 300;
        /* 用 offset 值比上头视图的高度,那么,当轮播滚动范围的 y 值等于轮播图的高度时, navigationBar 就完全不透明了 */
        CGFloat alpha = MIN(1, fabs(offset.y / cycleScrollViewHeight));
        /* 设置实时透明度 */
        self.alphaView.alpha = alpha;
    }
}

@end
