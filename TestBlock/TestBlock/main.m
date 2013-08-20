//
//  main.m
//  TestBlock
//
//  Created by mingchao on 13-6-27.
//  Copyright (c) 2013年 zhangzhiyi. All rights reserved.
//

#import <Foundation/Foundation.h>

int global = 1000; //全局变量
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        //block,很像Lua的function
        
        //参数是NSString*的代码块
        void (^printBlock)(NSString*);
        
        printBlock = ^(NSString* s)
        {
            NSLog(@"%@", s);
        };
        printBlock(@"Hello, block");
        
        int (^myblock)(int) = ^(int num)    //也可以不写返回值^int(int num)
        {
            return num;
        };
        NSLog(@"%d", myblock(100));
        //代码用在字符串数组排序
        NSArray* array = @[@"abc 1", @"abc 21", @"abc 12", @"abc 13", @"abc 05"];
        NSComparator sortBlock =^(id string1, id string2)
        {
            return [string1 compare:string2];
        };
        
        NSArray *sortArray = [array sortedArrayUsingComparator:sortBlock];
        NSLog(@"sortArray:%@", sortArray);
        
        //代码块想要递归调用，代码块变量必须是全局变量或者是静态变量，这样在程序启动的时候代码块变量就初始化了，可以递归调用
        static void (^ const blocks)(int) = ^(int i)
        {
            if (i > 0) {
                NSLog(@"num:%d", i);
                blocks(--i);
            }
        };
        blocks(3);
        //在代码块中可以使用和改变全局变量
        void (^changeGlobalField)(void) = ^(void)
        {
            global++;
            NSLog(@"gloabl:%d", global);
        };
        changeGlobalField();
        
        //在block中局部变量可以使用，但是不能改变
        int local = 500;
        void (^changeLocalField)(void) = ^(void)
        {
            //local++; //编译报错，局部变量不能改变
            NSLog(@"local:%d", local);
        };
        changeLocalField();
        
        //在局部变量前加上关键字：__block
        __block int blockLocal = 120;
        void (^changeBlockLocalField)(void) = ^(void)
        {
            blockLocal++;
            NSLog(@"blockLocal:%d", blockLocal);
        };
        changeBlockLocalField();
        
        //可以是个数组类型
        void (^p[2])(void)={
            ^(void){NSLog(@"block0");},
            ^(void){NSLog(@"block1");}
        };
        p[0]();
        p[1]();
    }
    return 0;
}

