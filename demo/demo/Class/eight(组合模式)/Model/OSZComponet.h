//
//  OSZComponet.h
//  demo
//
//  Created by Mac on 2017/4/25.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NodeProtocol.h"

@interface OSZComponet : NSObject <NodeProtocol>


@property (nonatomic, copy) NSString *nodeName;

////子节点可以有也可以没有,看具体需求
//@property (nonatomic, strong) NSMutableArray *nodes;

//便利构造器
+ (instancetype)nodeWithNodeName:(NSString *)nodeName;



@end
