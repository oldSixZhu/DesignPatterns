//
//  OSZ_Repairman.h
//  demo
//
//  Created by Mac on 2017/4/26.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OSZVisitor.h"

@interface OSZRepairman : NSObject<OSZVisitor>

@property (nonatomic, copy) NSString *name;

-(void)visitEngine:(OSZEngine *)engine;
-(void)visitWheel:(OSZWheel *)wheel;

@end
