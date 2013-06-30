//
//  PageView.h
//  TestKVO
//
//  Created by mingchao on 13-6-30.
//  Copyright (c) 2013年 zhangzhiyi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Student.h"

@interface PageView : NSObject{
    Student *student;
}
-(id)init:(Student*)initStudent;
@end
