//
//  main.m
//  TestDataTypes
//
//  Created by mingchao on 13-12-12.
//  Copyright (c) 2013年 zhangzhiyi. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        NSString *make = @"Porsche";
        for (int i = 0; i < [make length]; i++) {
            unichar letter = [make characterAtIndex:i];
            NSLog(@"%d, %hu", i, letter);
        }
        
        
        
    }
    return 0;
}

