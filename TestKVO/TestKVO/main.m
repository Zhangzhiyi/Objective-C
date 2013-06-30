//
//  main.m
//  TestKVO
//
//  Created by mingchao on 13-6-29.
//  Copyright (c) 2013年 zhangzhiyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"
#import "PageView.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        Student *student = [[Student alloc] init];
        [student changeCourseName:@"数学课"];
        NSLog(@"初始值:%@", [student valueForKey:@"courseName"]);
        
        //创建页面实例
        PageView *pageView = [[PageView alloc] init:student];
        [student setValue:@"化学课" forKey:@"courseName"];
        
    }
    return 0;
}

