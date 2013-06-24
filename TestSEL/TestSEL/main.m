//
//  main.m
//  TestSEL
//
//  Created by mingchao on 13-6-23.
//  Copyright (c) 2013年 zhangzhiyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DoProxy.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        DoProxy* proxy = [[DoProxy alloc] init];
        
        [proxy setAllIVars];
        [proxy SELFuncs];
        [proxy functionPointers];
    }
    return 0;
}

