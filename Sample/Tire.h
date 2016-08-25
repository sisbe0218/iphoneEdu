//
//  Tire.h
//  Sample
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 LDCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol TireDelegate <NSObject>
- (void) stopCar; // void 타입의 스탑카를 무조건 구현해야 한다
@end

    
@interface Tire : NSObject
{
    NSString *name;
}

@property (nonatomic, retain) id <TireDelegate> car;

- (NSString *) name;
- (void) runTire;
- (void) stopTire;

@end
