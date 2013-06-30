//
//  PageView.m
//  TestKVO
//
//  Created by mingchao on 13-6-30.
//  Copyright (c) 2013年 zhangzhiyi. All rights reserved.
//

#import "PageView.h"

@implementation PageView

- (id)init:(Student*)initStudent
{
    if (self = [super init]) {
        student = initStudent;
        [student addObserver:self forKeyPath:@"courseName" options:NSKeyValueObservingOptionOld|NSKeyValueObservingOptionNew context:nil];
    }
    return self;
}

-(void)dealloc
{
    [student removeObserver:self forKeyPath:@"courseName"];
}

- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    if ([keyPath isEqual:@"courseName"])
    {
        NSLog(@"PageView课程被改变了");
        NSLog(@"PageView新课程是:%@ 老课程是:%@", [change objectForKey:@"new"],[change objectForKey:@"old"]);
        
    }
}
@end
