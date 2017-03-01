//
//  OperationFactory.m
//  SimpleFactoryPattern
//
//  Created by 许杰 on 2017/3/1.
//  Copyright © 2017年 novunda. All rights reserved.
//

#import "OperationFactory.h"
#import "OperationAdd.h"
#import "OperationSub.h"
#import "OperationMul.h"
#import "OperationDiv.h"

@implementation OperationFactory

+ (Operation *)createOperate:(XJOperationState)operate {
    Operation *oper = nil;
    switch (operate) {
        case XJOperationStateAdd:
            oper = [[OperationAdd alloc] init];
            break;
        case XJOperationStateSub:
            oper = [[OperationSub alloc] init];
            break;
        case XJOperationStateMul:
            oper = [[OperationMul alloc] init];
            break;
        case XJOperationStateDiv:
            oper = [[OperationDiv alloc] init];
            break;
        default:
            break;
    }
    return oper;
}

@end
