//
//  main.m
//  SimpleFactoryPattern
//  简单工厂
//  Created by 许杰 on 2017/3/1.
//  Copyright © 2017年 novunda. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "OperationFactory.h"
#import "Operation.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        Operation *oper = [OperationFactory createOperate:XJOperationStateAdd];
        oper.numberA = 23;
        oper.numberB = 10;
        NSLog(@"result == %.2f", [oper getResult]);

//        @try {
//            Operation *oper = [OperationFactory createOperate:XJOperationStateDiv];
//            oper.numberA = 23;
//            oper.numberB = 0;
//            NSLog(@"result == %.2f", [oper getResult]);
//        } @catch (NSException *exception) {
//            NSLog(@"error = %@", exception.reason);
//        }
    }
    return 0;
}
