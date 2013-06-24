//
//  FractionMath.m
//  oc_Test1
//
//  Created by ET on 11-7-27.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "FractionMath.h"


@implementation Fraction (Math1)

- (Fraction*)add:(Fraction*)f{
    return [[Fraction alloc] initWithNumerator:numerator + [f Numertor]  andDenominator:denominator + [f Denominator]];
}

@end

@implementation Fraction (Math2)

- (Fraction*)mul:(Fraction *)f{
    return [[Fraction alloc] initWithNumerator:numerator + [f Numertor] andDenominator:denominator + [f Denominator]];
}

@end