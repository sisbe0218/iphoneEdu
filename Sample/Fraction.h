//
//  Fraction.h
//  Sample
//
//  Created by user on 2016. 8. 23..
//  Copyright © 2016년 LDCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject

- (void) setNumerator : (int) value;
- (void) setDenominator : (int) value;
- (int) numerator;
- (int) denominator;
- (void) print;

@end
