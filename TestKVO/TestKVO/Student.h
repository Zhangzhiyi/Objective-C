//
//  Student.h
//  TestKVO
//
//  Created by mingchao on 13-6-29.
//  Copyright (c) 2013年 zhangzhiyi. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject{
    NSString *name;
    NSString *courseName;
}

- (void)changeCourseName:(NSString*)newCourseName;
@end
