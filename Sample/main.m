//
//  main.m
//  Sample
//
//  Created by user on 2016. 8. 23..
//  Copyright © 2016년 LDCC. All rights reserved.
//

#import <Foundation/Foundation.h> // 프레임웤~
#import "Fraction.h"
#import "Calculator.h"

@interface Engine : NSObject
- (void) startEngine; // - 기호는
- (void) setName: (NSString *) name
         withAge:(int)age; //setName:withAge:
@end

@implementation Engine{
    NSString* engineName;
    int age;
}

- (void) startEngine {
    NSLog(@"Start Engine.");
}

- (void) setName:(NSString *)name withAge:(int)newAge{
    engineName = name;
}

@end

// +  클래스 메소드 , - 인스턴스메소드


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Engine *engine = [[Engine alloc] init]; // 대괄호 사용하여 alloc 메모리 할당 후 init 하는 단계를 한단계로 통합
        [engine startEngine];
        [engine setName:@"BMW" withAge: 17];
        Fraction *fraction = [[Fraction alloc] init];
        [fraction setNumerator:30];
        [fraction setDenominator:12];
        
        NSLog(@"My Numerator and Dominator are.. %i and %i",[fraction numerator], [fraction denominator] );
        [fraction print];
        
        
        Calculator *myCal = [[Calculator alloc] init];
        [myCal setAccumulator:300.03];
        [myCal add:2938];
        [myCal multiply:2.33];
        [myCal divide:229.11];
        [myCal subtract:20.32];
        NSLog(@"The result is %g", [myCal accumulator]);
    }
    return 0;
}
