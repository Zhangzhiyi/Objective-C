//
//  main.m
//  TestRunTime
//
//  Created by mingchao on 13-6-27.
//  Copyright (c) 2013年 zhangzhiyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Teacher.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        Person *person = [[Person alloc] init];
        Teacher *teacher = [[Teacher alloc] init];
        
        /**
         判断对象类型
         -(BOOL) isKindOfClass: classObj判断是否是这个类或者这个类的子类的实例
         -(BOOL) isMemberOfClass: classObj 判断是否是这个类的实例
         **/
        NSLog(@"---------------isMemberOfClass------------------");
        //YES
        if ([teacher isMemberOfClass:[Teacher class]]) {
            NSLog(@"teacher Teacher类的成员");
        }
        //NO
        if ([teacher isMemberOfClass:[Person class]]) {
            NSLog(@"teacher Person类的成员");
        }
        //NO
        if ([teacher isMemberOfClass:[NSObject class]]) {
            NSLog(@"teacher NSObject类的成员");
        }
        //只有第一个判断打印出来，isMemberOfClass判断是否是属于这类的实例，是否跟父类有关系他不管。
        NSLog(@"-----------------isKindOfClass----------------");
        //YES
        if ([teacher isKindOfClass:[Teacher class]]) {
            NSLog(@"teacher 是 Teacher类或Teacher的子类");
        }
        //YES
        if ([teacher isKindOfClass:[Person class]]) {
            NSLog(@"teacher 是 Person类或Person的子类");
        }
        //YES
        if ([teacher isKindOfClass:[NSObject class]]) {
            NSLog(@"teacher 是 NSObject类或NSObject的子类");  
        }
        
        NSLog(@"----------------respondsToSelector-----------------");
        /**
         -(BOOL) respondsToSelector: selector 判读实例是否有这样方法
         +(BOOL) instancesRespondToSelector:  判断类是否有这个方法。此方法是类方法，不能用在类的对象
         **/
        // YES
        if ( [teacher respondsToSelector: @selector(setName:)] == YES ) { //注意setName函数有参数，要加:号
            NSLog(@"teacher responds to setName: method" );
        }
        
        // NO
        if ( [teacher respondsToSelector: @selector(abcde)] == YES ) {
            NSLog(@"teacher responds to nonExistant method" );
        }
        
        // NO
        if ( [teacher respondsToSelector: @selector(alloc)] == YES ) {
            NSLog(@"teacher class responds to alloc method\n" );
        }
        NSLog(@"----------------instancesRespondToSelector-----------------");
        // NO
        if ( [Person instancesRespondToSelector: @selector(teach)] == YES ) {
            NSLog(@"Person instance responds to teach method" );
        }
        
        // YES
        if ( [Teacher instancesRespondToSelector: @selector(teach)] == YES ) {
            NSLog(@"Teacher instance responds to teach method");
        }
        // YES
        if ( [Teacher instancesRespondToSelector: @selector(setName:)] == YES ) {
            NSLog(@"Teacher instance responds to setName: method" );
        }
        //NO
        if([Teacher instanceMethodForSelector:@selector(alloc)] == YES)
        {
            NSLog(@"teacher class responds to alloc method\n" );
        }

    }
    return 0;
}

