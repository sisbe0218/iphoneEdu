//
//  main.m
//  Sample
//
//  Created by user on 2016. 8. 23..
//  Copyright © 2016년 LDCC. All rights reserved.
//

#import <Foundation/Foundation.h> // 프레임웤~

@interface Shape : NSObject
- (void) draw;
@end

@implementation Shape {
    float x, y;
    float width, height;
    NSString *color;
}

- (id) init
{
    self = [super init];
    if(self) {
        x = 0;
        y = 0;
        width = 10;
        height = 10;
        color = @"Black";
    }
    return self;
}

- (void) setX:(float)newX
    withnewY :(float)newY
{
    x = newX;
    y = newY;
}

- (void) setWidth : (float)newW
       withHeight : (float)newH
{
    
    width = newW;
    height = newH;
}

-(void) setColor : (NSString *) newColor
{
    color = newColor;
}

- (void) draw {
    NSLog(@"공통그리기로직");
    NSLog(@"X= %g, Y = %g, W=%g, H = %g", x, y, width, height);
    NSLog(@"Color = %@", color);
}
@end

@interface Rectangle : Shape
@end

@implementation Rectangle

-(void) draw {
    [super draw];
    NSLog(@"사각형 그리기");
}
@end

//원
@interface Circle : Shape
@end

@implementation Circle

-(void)draw {
    [super draw]; // 부모 불러놓고~!
    NSLog(@"원 그리기");
}
@end

//슈퍼써클
@interface SuperCircle : Circle
@end
@implementation SuperCircle
-(void)draw{
    [super draw];
    NSLog(@"반짝 반짝");
}

    @end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Circle *myCircle = [[Circle alloc] init];
        Rectangle *myRectangle = [[Rectangle alloc] init];
        SuperCircle *superCircle = [[SuperCircle alloc] init];
        
        
        [myCircle setColor: @"Red"];
        [myCircle setX:30.5 withnewY:40.2];
        [myCircle setWidth:30.2 withHeight:20.1];
        [myCircle draw];
        [myRectangle draw];
        [superCircle draw];
    }
    return 0;
}
