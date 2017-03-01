//
//  OperationDiv.m
//  SimpleFactoryPattern
//
//  Created by 许杰 on 2017/3/1.
//  Copyright © 2017年 novunda. All rights reserved.
//

#import "OperationDiv.h"

@implementation OperationDiv

- (CGFloat)getResult {
    if (self.numberB == 0) {
        //oc中不建议用throw,可是我没想好用啥😒
        @throw [NSException exceptionWithName:NSInvalidArgumentException
                                       reason:@"除数不能为0" userInfo:nil];
    }
    return self.numberA * 1.0 / self.numberB;
}

@end
