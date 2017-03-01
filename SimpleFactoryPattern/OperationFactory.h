//
//  OperationFactory.h
//  SimpleFactoryPattern
//  简单工厂类
//  Created by 许杰 on 2017/3/1.
//  Copyright © 2017年 novunda. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Operation;

/**
 oc不支持switch参数是字符串类型，用枚举类型代替

 - XJOperationStateAdd: +
 - XJOperationStateSub: -
 - XJOperationStateMul: *
 - XJOperationStateDiv: ／
 */
typedef NS_ENUM(NSUInteger, XJOperationState) {
    XJOperationStateAdd,
    XJOperationStateSub,
    XJOperationStateMul,
    XJOperationStateDiv
};

@interface OperationFactory : NSObject

/**
 根据枚举类型生产相应运算类

 @param operate 枚举类型
 @return 运算类
 */
+ (Operation *)createOperate:(XJOperationState)operate;

@end
