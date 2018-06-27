//
//  SecondClass.m
//  MessageForwardingDemo
//
//  Created by 张建 on 2018/6/26.
//  Copyright © 2018 QianLi. All rights reserved.
//

#import "SecondClass.h"

@implementation SecondClass

- (void)test
{
    NSLog(@"%@:%s",NSStringFromClass([self class]),__func__);
}

@end
