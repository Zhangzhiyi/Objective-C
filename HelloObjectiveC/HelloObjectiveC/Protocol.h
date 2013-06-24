//
//  Protocol.h
//  oc_Test1
//
//  Created by ET on 11-7-27.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol Protocol1 
- (void)print1;
@end

@protocol Protocol2
- (void)print2;
@end

//Printing3 <Printing2>的意思是Printing3 遵从（继承）Printing2，<>是遵从@protocol 协议的语法。
@protocol Protocol3 <Protocol2>

- (void)print3;

@end