//
//  Car.m
//  Sample
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 LDCC. All rights reserved.
//

#import "Car.h"

@implementation Car

- (id) init{
    self = [super init];
    if(self){
        engine = [[Engine alloc] init];
        tire = [[Tire alloc] init];
        tire.car = self; // 자신의 주소값을 tire에 세팅함
    }
    return self;
}

- (void) runCar{
    [engine startEngine];
    [tire runTire];
    
    Engine * newEngine = [newEngine getNewEngine];
    [newEngine startEngine];
    [newEngine release];
    
}

- (void) stopCar{
    [engine stopEngine];
    [tire stopTire];
}


- (void) setTire : (Tire *)newTire{
    if (tire) {
        [tire release];
    }
    tire = [newTire retain];
}

- (void) dealloc{
    [tire release];
    [super dealloc];
}

@end
