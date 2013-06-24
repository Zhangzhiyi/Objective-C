//
//  Fraction.h
//  oc_Test1
//
//  Created by ET on 11-7-26.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Protocol.h"

@interface Fraction : NSObject <Protocol1,Protocol3>{
    int numerator;
    @public int denominator;
    
}

- (Fraction*)initWithNumerator:(int)numerator andDenominator:(int)denominator;
- (void)setNumertor:(int)numerator;
- (void)setDenominator:(int)denominator;
- (void)setNumertor:(int)numerator andDenominator:(int)denominator;
- (int)Numertor;
- (int)Denominator;
- (void)print;
+ (void)callClassMethod; //类方法，相当于静态方法
@end
