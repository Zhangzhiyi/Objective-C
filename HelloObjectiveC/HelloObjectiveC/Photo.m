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
- (void)setPhotographer:(NSString *)input{

    photographer = input;
}
+ (NSString*)classname{
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
