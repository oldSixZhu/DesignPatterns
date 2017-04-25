//
//  NodeProtocol.h
//  demo
//
//  Created by Mac on 2017/4/25.
//  Copyright © 2017年 OSZ. All rights reserved.
//

@protocol NodeProtocol <NSObject>

//添加子节点
- (void)addNode:(id<NodeProtocol>)node;

//删除子节点
- (void)removeNode:(id<NodeProtocol>)node;

//展示
- (void)display;


@end
