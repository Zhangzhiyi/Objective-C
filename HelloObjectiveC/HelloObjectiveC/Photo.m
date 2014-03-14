//
//  Photo.m
//  oc_HelloWorld
//
//  Created by ET on 11-7-21.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "Photo.h"

@implementation Photo

- (id)init
{
    self = [super init];
    if (self) {
        // Initialization code here.
    }
    
    return self;
}
- (NSString*) Caption{
    return caption;
}
- (NSString*) Photographer{
    return photographer;
}
- (void) setCaption:(NSString *)input{
    caption = input;
}

/*1，实例方法里面的self，是对象的首地址。

2，类方法里面的self，是Class.

尽管在同一个类里面的使用self，但是self却有着不同的解读。在类方法里面的self，可以翻译成class self；在实例方法里面的self，
应该被翻译成为object self。在类方法里面的self和实例方法里面的self有着本质上的不同，尽管他们的名字都叫self。*/
- (void)setPhotographer:(NSString *)input{
    [self print];
    //[self classprnt]; 报错
    photographer = input;
}
+ (NSString*)classname{
    [self classprint];
    //[self print]; 报错
    return (@"Photo");
}

//没有在.h文件声明方法相当于是私有方法
+ (void)classprint{
     printf("调用没有声明的类方法\n");
}
- (void)print{
    printf("调用没有声明的实例方法\n");
}
- (void)dealloc
{

}

@end
