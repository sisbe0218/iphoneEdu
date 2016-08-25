//
//  Engine.h
//  Sample
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 LDCC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Engine : NSObject

-(NSString *) name;
- (void) startEngine;
- (void) stopEngine;
- (Engine *)getNewEngine;
@end
