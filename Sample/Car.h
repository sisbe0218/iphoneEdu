//
//  Car.h
//  Sample
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 LDCC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Engine.h"
#import "Tire.h"

@interface Car : NSObject <TireDelegate>

{
    Engine *engine;
    Tire *tire;
}


- (void) runCar;
- (void) stopCar;
- (void) setTire : (Tire *)newTire;
- (void) dealloc;
@end
