//
//  Person.h
//  oc_HelloWorld
//
//  Created by ET on 11-7-21.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Person : NSObject {
    NSString* name;
    float weight;
}

- (Person*)initWithWeight:(int)weight;
- (void)showLog:(NSString*)input;

@property(strong,readwrite)NSString* name;
@property(readonly)float weight;

@end
