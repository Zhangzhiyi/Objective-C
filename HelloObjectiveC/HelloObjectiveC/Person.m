//
//  Person.m
//  oc_HelloWorld
//
//  Created by ET on 11-7-21.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "Person.h"


@implementation Person

- (Person*)initWithWeight:(int)w{
    self=[super init];
    if(self){
        weight = w;
    }
    return self;
}
@synthesize name;
@synthesize weight;
- (void)showLog:(NSString *)input{
    NSLog(@"%@", input);
}
- (void)dealloc
{
    [self setName:nil];
}

@end
