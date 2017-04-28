//
//  OSZFood.h
//  demo
//
//  Created by Mac on 2017/4/28.
//  Copyright © 2017年 OSZ. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface OSZFood : NSObject

//做饭
- (void)make;

//米饭
- (void)makeMeal;
//肉
- (void)makeMeat;
//蔬菜
- (void)makeVegetables;
//预留的空方法,子类去添加 所谓的"钩子"
- (void)makeOther;

@end
