//
//  Operation.h
//  SimpleFactoryPattern
//  运算类
//  Created by 许杰 on 2017/3/1.
//  Copyright © 2017年 novunda. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Operation : NSObject

@property (nonatomic, assign) CGFloat numberA;

@property (nonatomic, assign) CGFloat numberB;

- (CGFloat)getResult;

@end
