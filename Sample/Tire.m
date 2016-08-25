//
//  Tire.m
//  Sample
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 LDCC. All rights reserved.
//

#import "Tire.h"

@implementation Tire

- (id) init{
    self = [super init];
    if(self){
        name = @"Normal Tire";
    }
    
    return self;
}

- (NSString *) name
{
    return name;
}

- (void) runTire{
    NSLog(@"타이어야 달리자");
    
    if([_car respondsToSelector:@selector(stopCar)]){ //구현이 되어있는지?!! 확인 후 메소드 실행
      [_car stopCar];
    }
}

- (void) stopTire{
    NSLog(@"타이어야 멈추자");
}


@end
