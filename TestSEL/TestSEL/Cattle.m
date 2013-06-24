//
//  Cattle.m
//  TestSEL
//
//  Created by mingchao on 13-6-23.
//  Copyright (c) 2013年 zhangzhiyi. All rights reserved.
//

#import "Cattle.h"

@implementation Cattle

- (void) saySomething
{
    NSLog(@"Hello, I am a cattle, I have %d legs.", legsCount);
}

- (void) setLegsCount:(int)count
{
    legsCount = count;
}
@end
