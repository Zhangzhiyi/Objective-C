//
//  Fraction.m
//  oc_Test1
//
//  Created by ET on 11-7-26.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "Fraction.h"


@implementation Fraction

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}
//自定义构造函数
- (Fraction*)initWithNumerator:(int)n andDenominator:(int)d{
    self = [super init];
    if (self){
        [self setNumertor:n andDenominator:d];
    }
    return self;
}
- (void)setNumertor:(int)n{
    numerator = n;
}
- (void)setDenominator:(int)d{
    denominator = d;
}
- (void)setNumertor:(int)n andDenominator:(int)d{
    numerator = n;
    denominator = d;
}
- (int)Numertor{
    return numerator;
}
- (int)Denominator{
    return denominator;
}
- (void)print{
    printf("%d/%d\n",numerator,denominator);
}
+ (void) callClassMethod{
    NSLog(@"callClassMethod");
}
- (void)print1{
    NSLog(@"接口1的方法");
}
- (void)print2{
    NSLog(@"接口2的方法");
}
- (void)print3{
    NSLog(@"接口3的方法");
}
@end
//在.m 文件中定义@interface，你没有看错，因为@interface 一旦定义在.m 文件中，它就不能
//以Header 文件的形式被导入到其他的类了，也就是这样的@interface 中定义的方法相当于
//被你给隐藏了，只能这个.m 编译单元内看见，内部类？？？。
@interface Fraction (Math3)
- (void)m;
@end
@implementation Fraction(Math3)

-(void)m{
    NSLog(@"调用隐藏方法");
}

@end