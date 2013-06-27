//
//  DoProxy.m
//  TestSEL
//
//  Created by mingchao on 13-6-23.
//  Copyright (c) 2013年 zhangzhiyi. All rights reserved.
//

#import "DoProxy.h"
#import "Cattle.h"
#import "Bull.h"
@implementation DoProxy

- (void) setAllIVars
{
    cattle[0] = [[Cattle alloc] init];
    bullClass = NSClassFromString(BULL_CLASS); //通过类名获取类对象
    //即cattle[1],cattle[2]都是Bull类的实例
    cattle[1] = [[bullClass alloc] init];
    cattle[2] = [[bullClass alloc] init];
    
    say = @selector(saySomething);  //saySomething函数没有参数是没有:的
    //say = NSSelectorFromString(@"saySomething");
    
    skin = NSSelectorFromString(SET_SKIN_COLOR);//setSkinColor函数有参数是要加上:
    //skin = @selector(setSkinColor:);
}
- (void) doWithCattleId:(id)aCattle colorParam:(NSString *)color
{
    //第一次运行的时候
    if (notFirstRun == NO)
    {
        NSString *myName = NSStringFromSelector(_cmd);//取当前运行的方法
        NSLog(@"Running in the method of %@", myName);
        notFirstRun = YES;
    }
    
    NSString *cattleParamClassName = [aCattle className];
    //如果aCattle是Bull或Cattle类的实例
    if ([cattleParamClassName isEqualToString:BULL_CLASS] || [cattleParamClassName isEqualToString:CATTLE_CLASS])
    {
        [aCattle setLegsCount:4];//设置牛的4条腿
        if ([aCattle respondsToSelector:skin])//如果aCattle对应的类中，有定义方法
        {
            [aCattle performSelector:skin withObject:color];//则调用setSkinColor方法
        }
        else
        {
            NSLog(@"Hi, I am a %@, have not setSkinColor!", cattleParamClassName);//否则输出提示信息
        }
        [aCattle performSelector:say];//最后执行saySomething方法（这个方法在Cattle和Bull二个类中都有，所以肯定能执行）
        
    }
    else //如果aCattle既不是Cattle类也不是Bull类的实例
    {
        NSString *className = [aCattle className];
        NSLog(@"Hi, you are a %@, but I like cattle or bull!", className);//显示这个"异类"的相关信息
    }
    
}
//初始化选择器以及相应函数
- (void) SELFuncs
{
	[self doWithCattleId:cattle[0] colorParam:@"brown"];
	[self doWithCattleId:cattle[1] colorParam:@"red"];
	[self doWithCattleId:cattle[2] colorParam:@"black"];
	[self doWithCattleId:self colorParam:@"haha"];//这里故意传入一个异类self(即DoProxy本身),DoProxy当然不是Bull或Cattle
}

- (void) functionPointers
{
    //取得函数指针的第一种方式
    setSkinColor_Func = (void (*)(id, SEL, NSString*))[cattle[1] methodForSelector:skin];
    //上面的语句其实等效于下面这种方法
    //IMP setSkinColor_Func = [cattle[1] methodForSelector:skin];
    
    //用第二种方法取得saySomething的函数指针
    say_Func = [cattle[1] methodForSelector:say];
    
    //用函数指针的形式调用setSkinColor
    setSkinColor_Func(cattle[1], skin, @"verbose");
    
    NSLog(@"Running as a function pointer will be more efficiency!");
	
	//调用saySomething方法
    say_Func(cattle[1], say);
}
@end
