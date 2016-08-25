//
//  main.m
//  Sample
//
//  Created by user on 2016. 8. 23..
//  Copyright © 2016년 LDCC. All rights reserved.
//

#import <Foundation/Foundation.h> // 프레임웤~
#import "Car.h"



int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Car *ca1r = [[Car alloc] init]; //CAR : 1

//        Tire *newTire = [[Tire alloc]init]; //TIRE : 1
//        [car setTire: newTire]; // CAR : 1 , TIRE :2
//        [newTire release]; // CAR :1 , TIRE : 1
        
        [ca1r runCar]; // CAR : 1, TIRE : 1
        [ca1r release]; // CAR : 0 , RElease : 0
        
        
    }
    return 0;
}
