//
//  OSZComponet.m
//  demo
//
//  Created by Mac on 2017/4/25.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZComponet.h"

@implementation OSZComponet

+(instancetype)nodeWithNodeName:(NSString *)nodeName
{
    OSZComponet *node = [[[self class]alloc]init];
    node.nodeName = nodeName;
    return node;
}

//添加子节点
- (void)addNode:(id<NodeProtocol>)node
{
    //已经是最后一级节点
}

//删除子节点
- (void)removeNode:(id<NodeProtocol>)node
{
    //已经是最后一级节点
}

//展示
- (void)display
{
    NSLog(@"%@",self.nodeName);
   
}


@end
