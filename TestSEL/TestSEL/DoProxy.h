//
//  DoProxy.h
//  TestSEL
//
//  Created by mingchao on 13-6-23.
//  Copyright (c) 2013年 zhangzhiyi. All rights reserved.
//

#import <Foundation/Foundation.h>

#define SET_SKIN_COLOR @"setSkinColor:"
#define CATTLE_CLASS @"Cattle"
#define BULL_CLASS @"Bull"
@interface DoProxy : NSObject{
    BOOL notFirstRun;
    
    id cattle[3];
    //定义两个选择器
    SEL say;
    SEL skin;
    
    //定义一个函数指针(传统C语言的处理方式)
    void(*setSkinColor_Func)(id, SEL, NSString*);
    
    //定义一个IMP方式的函数指针(Objective-C推荐方式)
    IMP say_Func;
    
    //定义一个类
    Class bullClass;
}

- (void) doWithCattleId:(id)aCattle colorParam:(NSString*)color;
- (void) setAllIVars;
- (void) SELFuncs;
- (void) functionPointers;

@end
