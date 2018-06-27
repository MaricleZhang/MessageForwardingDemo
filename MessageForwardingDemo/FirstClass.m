//
//  FirstClass.m
//  MessageForwardingDemo
//
//  Created by 张建 on 2018/6/26.
//  Copyright © 2018 QianLi. All rights reserved.
//

#import "FirstClass.h"
#import "SecondClass.h"
#import <objc/runtime.h>

@implementation FirstClass

void fooMethod(id obj, SEL _cmd)
{
    NSLog(@"Doing foo");
}

/** 动态方法解析  */
+ (BOOL)resolveInstanceMethod:(SEL)sel
{
//    NSLog(@"%s >>>> %@", __func__, NSStringFromSelector(sel));
//
//    BOOL resolved = [super resolveInstanceMethod:sel];
//    if (!resolved)
//    {
//        // 动态添加一个方法fooMethod处理消息
//        class_addMethod([self class], sel, (IMP)fooMethod, "v@:");
//        return YES; // 返回YES，表示消息转发成功，不会发生崩溃
//    }
    return YES;
}

/** 改变isa指针的指向和IMP  */
- (id)forwardingTargetForSelector:(SEL)aSelector
{
    NSLog(@"forwardingTargetForSelector:  %@", NSStringFromSelector(aSelector));
//    SecondClass *second = [[SecondClass alloc] init];
//    if ([second respondsToSelector: aSelector])
//    {
//        return second;
//    }
    return [super forwardingTargetForSelector: aSelector];
}

////* 完整消息转发
//- (NSMethodSignature *)methodSignatureForSelector:(SEL)aSelector
//{
//    //方法签名
//    return [NSMethodSignature signatureWithObjCTypes:"v@:@"];
//}
//
//- (void)forwardInvocation:(NSInvocation *)anInvocation
//{
//    NSLog(@"NSObject+CrashLogHandle---在类:%@中 未实现该方法:%@",NSStringFromClass([anInvocation.target class]),NSStringFromSelector(anInvocation.selector));
//}

@end
