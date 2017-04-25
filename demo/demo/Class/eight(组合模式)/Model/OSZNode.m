//
//  OSZTree.m
//  demo
//
//  Created by Mac on 2017/4/25.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZNode.h"

@implementation OSZNode


- (instancetype)init
{
    if (self = [super init])
    {
        self.nodes = [NSMutableArray array];
    }
    return self;
}

+(instancetype)nodeWithNodeName:(NSString *)nodeName
{
    OSZNode *node = [[[self class]alloc]init];
    node.nodeName = nodeName;
    return node;
}

//添加子节点
- (void)addNode:(id<NodeProtocol>)node
{
    [self.nodes addObject:node];
}

//删除子节点
- (void)removeNode:(id<NodeProtocol>)node
{
    [self.nodes removeObject:node];
}

//展示
- (void)display
{
    NSLog(@"%@",self.nodeName);
    
    [self.nodes enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        OSZNode *node = obj;
        NSLog(@"%@",node.nodeName);
    }];
}


@end









