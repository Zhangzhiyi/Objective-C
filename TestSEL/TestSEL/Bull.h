//
//  Bull.h
//  TestSEL
//
//  Created by mingchao on 13-6-23.
//  Copyright (c) 2013年 zhangzhiyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Cattle.h"

@interface Bull : Cattle{
    NSString *skinColor;
}

- (void) saySomething;
- (NSString*) getSkinColor;
- (void) setSkinColor:(NSString*) color;
@end
