//
//  Person.h
//  oc_HelloWorld
//
//  Created by ET on 11-7-21.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject {
    NSString *name;
    float weight;
    NSString *address;
    
}

- (Person*)initWithWeight:(int)weight;
- (void)showLog:(NSString*)input;
- (void)say;

@property(strong,readwrite)NSString* name;
@property(readonly)float weight;

@property(strong, readwrite)NSString* tel; // 没有定义变量，也没有在.m文件写@synthesize， 那么使用此变量要加下划线或者self，如_tel 或 self.tel
@property(strong, readwrite)NSString* address; //定义了变量，没有在在.m文件写@synthesize，那么使用此变量要加下划线或者self，如_address 或 self.address
@end
