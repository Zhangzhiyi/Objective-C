//
//  main.m
//  HelloObjectiveC
//
//  Created by mingchao on 13-6-17.
//  Copyright (c) 2013年 zhangzhiyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Photo.h"
#import "Person.h"
#import "Fraction.h"
#import "FractionMath.h"
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        int i = 10;
        BOOL isShow = true;
        float f = 3.1415926;
        char a = 120;
        NSString *name = @"Hi!";
        NSLog(@"%@", name);
        
        Photo* photo = [[Photo alloc] init];
        //也可以用new来创建对象，不过在obc用new是比较老式的写法，而且不支持自定义初始化函数
        Photo* photo2 = [Photo new];
        [photo setCaption:@"MyCaption"];
        [photo setPhotographer:@"MyPhotographer"];
        //实例方法
        NSLog(@"caption=\"%@\"", [photo Caption]);
        NSLog(@"photographer=\"%@\"", [photo Photographer]);
        //类方法
        NSLog(@"ClassName=\"%@\"", [Photo classname]);
        //"调用没有.h文件声明的方法"
        //[photo print];
        //[NSClassFromString(@"Photo") classprint];

        //访问器
        Person* person = [[Person alloc] initWithWeight:68];
        person.name=@"ET";
        NSLog(@"person name=\"%@\"", person.name);
        NSLog(@"person weight=\"%f\"",person.weight);
        
        //选择器访问方法
        SEL print = NSSelectorFromString(@"print:");
        IMP imp=[person methodForSelector:print];
        imp(person, print, @"********");

        
        Fraction *fraction = [[Fraction alloc] initWithNumerator:1 andDenominator:2];
        NSLog(@"numerator = %d",[fraction Numertor]);
        NSLog(@"denominator = %d",[fraction Denominator]);
        
        [Fraction callClassMethod]; //调用类方法
        //访问隐藏方法,会发出警告
        //[fraction m];
        //访问接口方法
        [fraction print1];
        <Protocol2> p2 = fraction;//使用protocol 类型，相当于JAVA中使用接口类型作为对象的引用Listlist=ArrayList的实例,不过这样只能调用该接口的方法。
        [p2 print2];
        //也可以写作id<Protocol3> p3 = fraction;
        ////从这里可以看出id 是一个泛型对象，在id 后面使用<>作为泛型参数可以明确的告诉别人你想把id 当作哪些种协议去使用，当然你可以不写泛型参数。
        id<Protocol1,Protocol2,Protocol3> p123 = fraction;
        [p123 print3];
        
        //类别Category
        Fraction *fraction1 = [[Fraction alloc] initWithNumerator:2 andDenominator:3];
        Fraction *fraction2 = [fraction add:fraction1];
        NSLog(@"numerator = %d",[fraction2 Numertor]);
        NSLog(@"denominator = %d",[fraction2 Denominator]);
        
        // SEL、Class、id 三个不需要在变量前使用*的类型，因为它已经是一个指针。
        Class classFraction = [Fraction class];
        [classFraction callClassMethod];

        BOOL b = YES;//BOOL是一个8位（一个字节）整数，1为YES,不等于1即是NO
        if (b == YES){
            BOOL b1 = 2;
            if (b1 == YES){
                NSLog(@"YES");//发现这里没有输出，因为8960超出8位表示范围，高位无效，低位全是0,即是NO
            }
            else{
                NSLog(@"NO");
            }
        }
        
    }
    return 0;
}

