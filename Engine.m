//
//  Engine.m
//  Sample
//
//  Created by user on 2016. 8. 25..
//  Copyright © 2016년 LDCC. All rights reserved.
//

#import "Engine.h"

@implementation Engine
{
    NSString * name;
}

- (id) init {
    //nil이 아니면
    self = [super init];
    if(self){
        name = @"롯데정보통신 그린카";
    }
    return self;
}

- (NSString * ) name{
    return name;
}

- (void)startEngine{
    NSLog(@"엔진이 기동되었습니다.");
}

-(void)stopEngine{
    NSLog(@"엔진이 정지되었습니다.");
}

- (Engine *)getNewEngine{
    Engine *engine = [[Engine alloc]init];
    return [engine autorelease];
}
@end
