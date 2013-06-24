//
//  Bull.m
//  TestSEL
//
//  Created by mingchao on 13-6-23.
//  Copyright (c) 2013年 zhangzhiyi. All rights reserved.
//

#import "Bull.h"

@implementation Bull

- (void) saySomething
{
    NSLog(@"Hello, I am a Bull, I have %d legs.", legsCount);
}
- (void) setSkinColor:(NSString *)color
{
    skinColor = color;
}
@end
