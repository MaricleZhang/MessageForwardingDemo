//
//  ViewController.m
//  MessageForwardingDemo
//
//  Created by 张建 on 2018/6/26.
//  Copyright © 2018 QianLi. All rights reserved.
//

#import "ViewController.h"
#import "FirstClass.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"请点击屏幕测试";
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    FirstClass *first = [[FirstClass alloc] init];
    [first performSelector:@selector(test)];
}

@end
