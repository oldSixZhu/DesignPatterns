//
//  OSZEightVC.m
//  demo
//
//  Created by Mac on 2017/4/25.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import "OSZEightVC.h"
#import "OSZNode.h"
#import "OSZComponet.h"

@interface OSZEightVC ()

@end

@implementation OSZEightVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    //通过协议把几个类组合在一起
    OSZNode *rootNode1 = [OSZNode nodeWithNodeName:@"根节点1"];
    OSZNode *node1 = [OSZNode nodeWithNodeName:@"子节点1"];
    OSZNode *node2 = [OSZNode nodeWithNodeName:@"子节点2"];
    OSZNode *node3 = [OSZNode nodeWithNodeName:@"子节点3"];
    [rootNode1 addNode:node1];
    [rootNode1 addNode:node2];
    [rootNode1 addNode:node3];
    
    OSZComponet *node11 = [OSZComponet nodeWithNodeName:@"子节点11"];
    OSZComponet *node12 = [OSZComponet nodeWithNodeName:@"子节点12"];
    [node1 addNode:node11];
    [node1 addNode:node12];
    
    [rootNode1 display];
    [node1 display];
    
}

@end
