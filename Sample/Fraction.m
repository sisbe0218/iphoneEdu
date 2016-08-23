//
//  Fraction.m
//  Sample
//
//  Created by user on 2016. 8. 23..
//  Copyright © 2016년 LDCC. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction
{
    int numerator;
    int denominator;
}

- (void) setNumerator : (int) value{
    numerator = value;
}


- (void) setDenominator : (int) value {
    denominator = value;
}

- (int) numerator {
    return numerator;
}

- (int) denominator {
    return denominator;
}

- (void) print{
    NSLog(@"%i / %i", numerator, denominator);
}


@end