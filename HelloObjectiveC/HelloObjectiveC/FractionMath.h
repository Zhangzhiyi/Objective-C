//
//  FractionMath.h
//  oc_Test1
//
//  Created by ET on 11-7-27.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"
//定义 两个类别Category
@interface Fraction (Math1)
- (Fraction*)add:(Fraction*)f;
@end

@interface Fraction (Math2)
- (Fraction*)mul:(Fraction*)f;
@end

