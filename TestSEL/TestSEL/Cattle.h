//
//  Cattle.h
//  TestSEL
//
//  Created by mingchao on 13-6-23.
//  Copyright (c) 2013年 zhangzhiyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cattle : NSObject{
    int legsCount;
}

- (void) saySomething;
- (void) setLegsCount:(int) count;
@end
